import 'package:final_project/screens/communication_screen.dart';
import 'package:flutter/material.dart';

import '../../widget/app_elevated_button.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  final List<String> _listCours = [
    'java',
    'UX-UI',
    'PHP Laravel',
    'Programming basics',
    'Motion graphics course',
    'Premiere Course (Montage)',
    'Professional accountant course',
    'PHP Laravel',
    'Programming basics',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 25,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding:  EdgeInsets.only(top: 110),
                child: Text(
                  'The date of each course',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 50),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _listCours.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      AppElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CommunicationScreen(
                                    lable: _listCours[index],
                                    img: index < 1
                                        ? 'assets/java_img.png'
                                        : 'assets/ui_img.png'),
                              )),
                          course: _listCours[index]),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
