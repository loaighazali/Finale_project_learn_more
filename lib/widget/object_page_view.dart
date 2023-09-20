import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ObjectPageView extends StatelessWidget {
  const ObjectPageView({
    super.key,
    required this.image,
    required this.title_1,
    required this.title_2,
  });

  final String image ;
  final String title_1 ;
  final String title_2 ;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(image: AssetImage(image)),

          const SizedBox(height: 65.8,),

          Text(
            textAlign: TextAlign.center,
           title_1,
            style:const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 13,),

          Text(
            textAlign: TextAlign.center,
            title_2,
            style:const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
