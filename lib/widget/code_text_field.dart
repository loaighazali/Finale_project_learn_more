import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CodeTextField extends StatelessWidget {
  const CodeTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onChange,
  });

  final TextEditingController controller;
  final FocusNode  focusNode;
  final void Function(String value) onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller ,
      onChanged: onChange,
      focusNode:focusNode ,
      maxLength: 1,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        fillColor:const Color(0xFFE3EBEE),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:const BorderSide(
                color: Colors.transparent
            ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide:const BorderSide(
              color: Colors.transparent
          ),
        ),
      ),
    );
  }
}
