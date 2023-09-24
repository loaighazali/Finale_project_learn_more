import 'package:final_project/models/courss_list.dart';
import 'package:final_project/screens/bottomNav/calender_screen.dart';
import 'package:final_project/screens/bottomNav/message_screen.dart';
import 'package:final_project/screens/bottomNav/profile_screen.dart';
import 'package:final_project/widget/app_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNavScreen extends StatefulWidget {
  const HomeNavScreen({Key? key}) : super(key: key);

  @override
  State<HomeNavScreen> createState() => _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen> {
  late TextEditingController _searchEditingController;

  final List<String> _listCours = [
    'java',
    'UX-UI',
    'PHP Laravel',
    'Programming basics',
    'Motion graphics course',
    'Premiere Course (Montage)',
    'Professional accountant course',
  ];

  final List<CourrssList> _listGride = [
    CourrssList(img: 'assets/grid1.png', tetcher: 'M. Dalia Kassab', course: 'UX-UI'),
    CourrssList(img: 'assets/grid2.png', tetcher: 'M. Dalia Kassab', course: 'JAVA'),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _searchEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20, end: 20 , top: 40, ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.filter_list_outlined,
                      size: 30,
                    ),
                  ),
                  const Icon(
                    Icons.person,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 60,
                width: 370,
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: TextField(
                    controller: _searchEditingController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Image(
                image: AssetImage('assets/home.png'),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'The most common majors',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'view all',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: _listGride.length,
                  itemBuilder: (context, index) {
                  return  Card(
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                         Image(image: AssetImage(_listGride[index].img)),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 30,
                            padding:const EdgeInsetsDirectional.symmetric(horizontal: 10),
                            color:const Color(0xFF852530) ,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _listGride[index].course,
                                  style:const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  _listGride[index].tetcher,
                                  style:const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                  scrollDirection: Axis.horizontal,


                ),
              ),

              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'All courses',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'view all',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ],
              ),

             SizedBox(height: 200,
               child: ListView.builder(
                 shrinkWrap: true,
                 itemCount: _listCours.length,
                 itemBuilder: (context, index) {
                 return AppElevatedButton(onPressed: () => Navigator.pushNamed(context, '/details_screen'), course: _listCours[index]);
               },),
             )

            ],
          ),
        ));
  }
}

