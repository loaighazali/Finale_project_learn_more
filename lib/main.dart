import 'package:final_project/screens/auth/SignIn_screen.dart';
import 'package:final_project/screens/auth/forgetpass_screen.dart';
import 'package:final_project/screens/auth/registration_screen.dart';
import 'package:final_project/screens/auth/signUp_screen.dart';
import 'package:final_project/screens/auth/terms_screen.dart';
import 'package:final_project/screens/auth/verification_screen.dart';
import 'package:final_project/screens/dataRecording_screen.dart';
import 'package:final_project/screens/details_screen.dart';
import 'package:final_project/screens/home_screen.dart';
import 'package:final_project/screens/lunch_screen.dart';
import 'package:final_project/screens/page_view.dart';
import 'package:final_project/screens/successful_screen.dart';
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
        '/signUp_screen' : (context) => const SignUpScreen(),
        '/signIn_screen' : (context) => const SignInScreen(),
        '/verification_screen' : (context) => const VerificationScreen(),
        '/terms_screen' : (context) => const TermsScreen(),
        '/forgetpass_screen' : (context) => const ForgetPassScreen(),
        '/home_screen' : (context) => const HomeScreen(),
        '/details_screen' : (context) => const DetailsScreen(),
        '/dataRecording_screen' : (context) => const DataRecordingScreen(),
        '/successful_screen' : (context) => const SuccessfulScreen(),
      },
    );
  }
}


