import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ObjectIndicitorPage extends StatelessWidget {
   ObjectIndicitorPage({
    super.key,
    required this.status,
    required this.end
  });

  final bool status ;
   double end = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsetsDirectional.only(end: end),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: status ? const Color(0xFF852530) : Colors.grey,
      ),
    );
  }
}
