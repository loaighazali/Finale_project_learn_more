import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessfulScreen extends StatefulWidget {
  const SuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<SuccessfulScreen> createState() => _SuccessfulScreenState();
}

class _SuccessfulScreenState extends State<SuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/suc_img.png'),
            ),

            const SizedBox(height: 15,),

            const Text(
              textAlign: TextAlign.center,
              'The data has been entered\n successfully',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/home_screen'),
              child:const  Text(
                'Continue Shopping',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF852530),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
