import 'package:demo/customicon/flutter_demo_icons.dart';
import 'package:flutter/material.dart';

class TextOverflowScreen extends StatelessWidget {
  const TextOverflowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(' Text overflow in flutter'),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.red,
            child: Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      'Hello it me Sagar Koju.Hello it me Sagar Koju.Hello it me Sagar Koju.Hello it me Sagar Koju.Hello it me Sagar Koju.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
