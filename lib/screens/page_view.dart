import 'package:final_project/widget/object_indicitor_page.dart';
import 'package:final_project/widget/object_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViews extends StatefulWidget {
  const PageViews({Key? key}) : super(key: key);

  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
  late PageController _pageController;

  int _indexPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _indexPage = value;
                });
              },
              children: const [
                ObjectPageView(
                  image: 'assets/pv1.png',
                  title_1: 'Welcome to the Learn More app',
                  title_2:
                      'Learn More application is a smarter way to\n teach all kinds. You can visit our website at\n the following link...        ',
                ),
                ObjectPageView(
                  image: 'assets/pv2.png',
                  title_1: 'Join us in the educational courses',
                  title_2:
                      'Learn More application is a smarter way to\n teach all kinds. You can visit our website at\n the following link...        ',
                ),
                ObjectPageView(
                  image: 'assets/pv3.png',
                  title_1: 'Easily search for educational\n courses around you',
                  title_2:
                      'Learn More application is a smarter way to\n teach all kinds. You can visit our website at\n the following link...        ',
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ObjectIndicitorPage(status: _indexPage == 0, end: 10),
                      ObjectIndicitorPage(status: _indexPage == 1, end: 10),
                      ObjectIndicitorPage(status: _indexPage == 2, end: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 80),
                  child: ElevatedButton(
                    onPressed: () {
                      _indexPage <2 ?
                      _pageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn) : Navigator.pushNamed(context, '/registration_screen');
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(154, 50),
                      backgroundColor: const Color(0xFF852530),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Visibility(
              visible: _indexPage<2,
              child: Positioned(
                top: 50,
                right: 10,
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(2, duration:const Duration(seconds: 1), curve: Curves.easeIn);
                  },
                  child:const Text('Skip',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
