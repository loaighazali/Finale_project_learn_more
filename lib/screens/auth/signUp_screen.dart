import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../widget/app_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool visiblePass = true;
  bool visibleConfPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF852530),
            ),
          )),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
        child: ListView(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 25),
          children: [
            const Padding(
              padding: EdgeInsetsDirectional.only(bottom: 20),
              child: Center(
                child: Image(
                  image: AssetImage('assets/signin_img.png'),
                ),
              ),
            ),
            const Text(
              'Create a new account',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  width: 70,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(5),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      '+972',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                    width: 248,
                    height: 44,
                    child: AppTextField(
                      hint: 'Phone',
                      inputType: TextInputType.phone,
                      suffix:
                          IconButton(onPressed: () {}, icon: const Icon(null)),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 364,
              height: 44,
              child: AppTextField(
                hint: 'Password',
                inputType: TextInputType.visiblePassword,
                obscure: visiblePass,
                suffix: IconButton(
                  onPressed: () {
                    setState(() {
                      visiblePass = !visiblePass;
                    });
                  },
                  icon: Icon(
                    visiblePass ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 364,
              height: 44,
              child: AppTextField(
                hint: 'Confirm Password ',
                inputType: TextInputType.visiblePassword,
                obscure: visibleConfPass,
                suffix: IconButton(
                  onPressed: () {
                    setState(() {
                      visibleConfPass = !visibleConfPass;
                    });
                  },
                  icon: Icon(
                    visibleConfPass ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/verification_screen'),
                child: const Text(
                  'Verification code?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/terms_screen'),
                child: const Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/signIn_screen'),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsetsDirectional.zero,
                  backgroundColor: const Color(0xFF852530),
                  minimumSize: const Size(364, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(
                        color: Color(0xFF707070),
                        width: 1,
                      ))),
              child: const Text(
                'SignUp',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have account?'),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/signIn_screen'),
                  child:const Text(
                    'SignIn',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                    ),
                  ),
                ),

              ],
            ),

            // Center(
            //   child: RichText(
            //     textAlign: TextAlign.center,
            //     text: TextSpan(
            //         text: 'Already have account? ',
            //         style:  TextStyle(fontSize: 14, color: Colors.black),
            //         children: [
            //           TextSpan(
            //               //recognizer: _gestureRecognizer,
            //               text: 'SignIn',
            //               style:
            //                    TextStyle(fontSize: 14, color: Colors.red)),
            //         ]),
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'OR',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: const Image(
                  image: AssetImage('assets/wts.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
