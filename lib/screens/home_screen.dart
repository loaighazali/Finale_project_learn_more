import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottomNav/calender_screen.dart';
import 'bottomNav/homeNav_screen.dart';
import 'bottomNav/message_screen.dart';
import 'bottomNav/profile_screen.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key ,  this.index = 0}) : super(key: key);
     int? index = 0 ;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late int? _currentIndex = widget.index ;


   List<Widget> _listScreen = [
    HomeNavScreen(),
    MessageScreen(),
    CalenderScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Stack(
        children: [
          _listScreen[_currentIndex!],
          Positioned(
            bottom: 20,
            right: 20,
            left: 20,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(30)
              ),
              child: BottomNavigationBar(

                backgroundColor:const  Color(0xFF852530),
                showUnselectedLabels: true,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.white,
                selectedItemColor: Colors.yellowAccent,
                currentIndex: _currentIndex!,
                showSelectedLabels: false,



                onTap: (value) {
                  setState(() {
                    _currentIndex = value ;
                  });
                },

                items:const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: '',
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.message),
                    label: '',
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month_outlined),
                    label: '',
                  ),

                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_outlined),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),



      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsetsDirectional.only(bottom: 30, start: 25, end: 25),
      //   child: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadiusDirectional.circular(20)
      //     ),
      //     child: BottomNavigationBar(
      //
      //       backgroundColor:const  Color(0xFF852530),
      //       showUnselectedLabels: true,
      //       type: BottomNavigationBarType.fixed,
      //       unselectedItemColor: Colors.white,
      //       selectedItemColor: Colors.yellowAccent,
      //       currentIndex: _currentIndex,
      //       showSelectedLabels: false,
      //
      //
      //
      //       onTap: (value) {
      //         setState(() {
      //           _currentIndex = value ;
      //         });
      //       },
      //
      //       items: [
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.home_outlined),
      //            label: '',
      //         ),
      //
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.message),
      //           label: '',
      //         ),
      //
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.calendar_month_outlined),
      //           label: '',
      //         ),
      //
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.person_outline_outlined),
      //           label: '',
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
