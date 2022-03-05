import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ShowDataScreen extends StatefulHookWidget {
  const ShowDataScreen({Key? key}) : super(key: key);

  @override
  State<ShowDataScreen> createState() => _ShowDataScreenState();
}

class _ShowDataScreenState extends State<ShowDataScreen> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Data on Typing TextField'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Card(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text('The Text you typed: ${name.toString()}'),
              ),
            ),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: 'Enter the Text',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = controller.text.toString();
                  });
                },
                child: Text(
                  'Submit',
                )),
          )
        ],
      ),
    );
  }
}
