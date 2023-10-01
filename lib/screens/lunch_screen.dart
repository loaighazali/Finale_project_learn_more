import 'dart:async';

import 'package:final_project/controllers/fb_auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {

  late StreamSubscription _streamSubscription ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      FbAuthController().checkUserState(listener: ({required bool status}) {
        String rout = status ? '/home_screen' : '/page_view' ;
        Navigator.pushReplacementNamed(context, rout);
      }, );

    },);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFE3C163).withOpacity(0.43),
        child: Center(
          child: Image.asset('assets/lunch_img.png'),
        ),
      ),
    );
  }
}
