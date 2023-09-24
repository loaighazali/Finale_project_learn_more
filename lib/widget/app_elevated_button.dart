import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.course
  });

  final void Function() onPressed;
  final String course ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 5,
        padding:const EdgeInsetsDirectional.symmetric(horizontal: 5),
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadiusDirectional.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            course,
            style:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),

          const Icon(Icons.arrow_forward_ios , color: Colors.black,)
        ],
      ),
    );
  }
}
