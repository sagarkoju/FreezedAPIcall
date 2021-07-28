import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class PhoneCallScreen extends StatefulWidget {
  const PhoneCallScreen({Key? key}) : super(key: key);

  @override
  _PhoneCallScreenState createState() => _PhoneCallScreenState();
}

class _PhoneCallScreenState extends State<PhoneCallScreen> {
  TextEditingController _numberCtrl = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "98851701706";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Call'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: new Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            controller: _numberCtrl,
            decoration: InputDecoration(labelText: "Phone Number"),
            keyboardType: TextInputType.number,
          ),
        ),
        ElevatedButton(
          child: Text("Test Call"),
          onPressed: () async {
            FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
          },
        )
      ]),
    );
  }
}
