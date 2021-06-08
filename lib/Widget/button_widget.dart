import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onpressed,
  }) : super(key: key);
  final String text;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8),
      width: size.width,
      height: size.height * 0.09,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(text),
      ),
    );
  }
}
