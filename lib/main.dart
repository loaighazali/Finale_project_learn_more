import 'package:final_project/screens/auth/registration_screen.dart';
import 'package:final_project/screens/lunch_screen.dart';
import 'package:final_project/screens/page_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/lunch_screen',
      routes: {
        '/lunch_screen' : (context) =>const LunchScreen(),
        '/page_view' : (context) => const PageViews(),
        '/registration_screen' : (context) => const RegistrationScreen(),
      },
    );
  }
}


