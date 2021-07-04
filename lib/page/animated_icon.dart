import 'package:flutter/material.dart';

class AnimatedIconScreen extends StatefulWidget {
  const AnimatedIconScreen({Key? key}) : super(key: key);

  @override
  _AnimatedIconScreenState createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen> {
  bool isPlaying = false;
  int selectedIndex = 0;
  // @override
  // void initState() {
  //   controller = AnimationController(
  //       vsync: this, duration: Duration(milliseconds: 2000));

  //   // controller.forward().then((_) async {
  //   //   await Future.delayed(Duration(seconds: 1));
  //   //   controller.reverse();
  //   // });
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item: $index'),
            tileColor: selectedIndex == index ? Colors.blue : null,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }

  // void toggleIcon() {
  //   setState(() {
  //     isPlaying = !isPlaying;
  //     isPlaying ? controller.forward() : controller.reverse();
  //   });
  // }
}
