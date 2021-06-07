import 'package:demo/Widget/button_widget.dart';
import 'package:demo/page/photos.dart';
import 'package:demo/page/user.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api call From Freezed'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
                text: 'Photos',
                onpressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                }),
            ButtonWidget(
                text: 'User',
                onpressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => UserScreen()));
                }),
          ],
        ),
      ),
    );
  }
}