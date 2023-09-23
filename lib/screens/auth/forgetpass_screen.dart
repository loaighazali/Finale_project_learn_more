import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/app_text_field.dart';

class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  bool visiblePass = true;
  bool visibleConfPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF852530),
          ),
        ),
        title: const Text(
          'Forget Password',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF717171),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
        children: [
          const SizedBox(
            height: 50,
          ),
          const Image(
            image: AssetImage(
              'assets/forget.png',
            ),
          ),
          const SizedBox(
            height: 45,
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
            height: 10,
          ),
          TextButton(
            onPressed: () =>
                Navigator.pushNamed(context, '/verification_screen'),
            child: const Text(
              'Verification code?',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFFDDAD38),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/home_screen'),
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
              'SignIn',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 15,),

          const Center(
            child:  Text(
              'Resend',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF717171),
              ),
            ),
          ),



           Container(
             height: 42,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF717171),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
