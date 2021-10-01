import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CustomLabelTextField extends StatefulWidget {
  CustomLabelTextField(
      {Key? key,
      required this.controller,
      this.obscureText = false,
      this.hintText,
      this.focusNode,
      this.nextNode,
      this.onFieldSubmitted,
      this.textInputAction,
      this.textInputType,
      this.length,
      this.onTap,
      this.textCapitalization,
      this.labelText,
      this.inputFormatters})
      : super(key: key);
  final TextEditingController controller;
  bool obscureText;
  final String? hintText;
  final FocusNode? focusNode;
  final FocusNode? nextNode;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final Function()? onTap;
  final TextCapitalization? textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String value)? onFieldSubmitted;
  final int? length;
  final String? labelText;

  @override
  _CustomLabelTextFieldState createState() => _CustomLabelTextFieldState();
}

class _CustomLabelTextFieldState extends State<CustomLabelTextField> {
  final controller = TextEditingController();
  @override
  void initState() {
    focusNode.addListener(_focusNodeListner);
    super.initState();
  }

  Future<void> _focusNodeListner() async {
    if (focusNode.hasFocus) {
      print('text field got focus');
    } else {
      print('text field lost focus');
    }
  }

  FocusNode focusNode = FocusNode();
  bool hasFocus = false;
  @override
  Widget build(BuildContext context) {
    void _onFieldSubmitted(String text) {
      widget.onFieldSubmitted?.call(text);
      if (widget.nextNode != null) {
        widget.nextNode!.requestFocus();
      } else {
        FocusScope.of(context).unfocus();
      }
    }

    return Container(
      alignment: Alignment.topLeft,
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 05, horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        onFieldSubmitted: _onFieldSubmitted,
        validator: (value) {
          if (value == null || value == '') {
            return '${widget.hintText} is required.';
          }
        },
        focusNode: focusNode,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        onTap: widget.onTap,
        controller: widget.controller,
        inputFormatters: widget.inputFormatters ?? [],
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction ??
            (widget.nextNode == null
                ? TextInputAction.done
                : TextInputAction.next),
        cursorColor: Colors.black45,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          isDense: true,
          labelText: widget.hintText,
          // hintText: widget.hintText,
          enabledBorder: InputBorder.none,
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
