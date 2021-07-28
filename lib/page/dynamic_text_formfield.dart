import 'package:flutter/material.dart';

class DynamicTextFormFieldScreen extends StatefulWidget {
  const DynamicTextFormFieldScreen({Key? key}) : super(key: key);

  @override
  _DynamicTextFormFieldScreenState createState() =>
      _DynamicTextFormFieldScreenState();
}

class _DynamicTextFormFieldScreenState
    extends State<DynamicTextFormFieldScreen> {
  List<String> newTextField = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Text Form Field'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'First Text field',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                ),

                ///Adding a new textfield
                IconButton(
                  onPressed: () {
                    setState(() {
                      newTextField.add('');
                    });
                  },
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.green,
                    size: 30,
                  ),
                )
              ],
            ),

            ///added text fields
            ...getNewTextFormFields(),

            ///Button to print the values
            ElevatedButton(
              onPressed: () {
                //the valued are displayed in the list
                print(newTextField);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  ///Generating new textform if add button is clicked
  List<Widget> getNewTextFormFields() {
    var textField = <Widget>[];
    for (var i = 0; i < newTextField.length; i++) {
      textField.add(
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (value) {
                    newTextField[i] = value;
                  },
                  decoration: InputDecoration(
                    hintText: '${i + 1} Text field',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  newTextField.removeAt(i);
                });
              },
              icon: Icon(
                Icons.remove_circle,
                color: Colors.red,
                size: 30,
              ),
            )
          ],
        ),
      );
    }
    return textField;
  }
}
