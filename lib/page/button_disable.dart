import 'package:flutter/material.dart';

class ButtonEnableDisableScreen extends StatefulWidget {
  const ButtonEnableDisableScreen({Key? key}) : super(key: key);

  @override
  _ButtonEnableDisableScreenState createState() =>
      _ButtonEnableDisableScreenState();
}

class _ButtonEnableDisableScreenState extends State<ButtonEnableDisableScreen> {
  bool isButtonActive = true;
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActives = controller.text.isNotEmpty;

      setState(() {
        this.isButtonActive = isButtonActives;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button disable and Enable'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  label: Text('Name'), border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  onSurface: Colors.blue, shape: StadiumBorder()),
              onPressed: isButtonActive
                  ? () {
                      setState(() {
                        this.isButtonActive = false;
                        controller.clear();
                      });
                    }
                  : null,
              child: Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}
