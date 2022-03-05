import 'package:demo/Widget/custom_label_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FoldScreen extends StatefulWidget {
  const FoldScreen({Key? key}) : super(key: key);

  @override
  State<FoldScreen> createState() => _FoldScreenState();
}

class _FoldScreenState extends State<FoldScreen> {
  final _formKey = GlobalKey<FormState>();
  final itemcontroller = TextEditingController();
  final pricecontroller = TextEditingController();

  List<Item> item = [];
  @override
  void initState() {
    itemcontroller.text = 'Item';
    pricecontroller.text = 'Price';
    super.initState();
  }

  @override
  void dispose() {
    itemcontroller.dispose();
    pricecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fold Method'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomLabelTextField(
                  controller: itemcontroller,
                  hintText: "Item",
                  labelText: 'Items',
                ),
                CustomLabelTextField(
                  controller: pricecontroller,
                  hintText: "Price",
                  labelText: 'Price',
                ),
                IconButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      item.add(Item(itemcontroller.text,
                          int.parse(pricecontroller.text)));

                      setState(() {
                        itemcontroller.clear();
                        pricecontroller.clear();
                      });
                    }
                  },
                  icon: Icon(
                    Icons.subdirectory_arrow_left,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DataTable(columns: [
                  DataColumn(label: Text('Item')),
                  DataColumn(label: Text('Price'))
                ], rows: [
                  ...item.map((e) => DataRow(cells: [
                        DataCell(Text(e.item)),
                        DataCell(Text(e.price.toString())),
                      ])),
                  DataRow(cells: [
                    DataCell(Text(
                      'Total amount',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    DataCell(Text(
                      item.fold<int>(0, (a, b) => a + b.price).toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ]),
                ])
              ],
            ),
          ),
        ));
  }
}

class Item {
  final String item;
  final int price;
  Item(this.item, this.price);
}
