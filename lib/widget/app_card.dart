import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.lable,
    required this.controller,
  });

  final String lable ;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lable,
              style:const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),

            TextField(
              controller: controller,
              decoration:const InputDecoration(
                  hintText: 'your answer',
                  hintStyle: TextStyle(
                      fontSize: 14
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
