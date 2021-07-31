import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  String name = "2nd screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Screen'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: StadiumBorder()),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => SecondScreen(name: name)));
            },
            child: Text('First Screen')),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Text(widget.name,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.red,
                )),
      ),
    );
  }
}
