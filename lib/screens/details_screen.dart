import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
              image: AssetImage('assets/details.png'),
              width: double.infinity,
              height: 200,
              fit: BoxFit.fitWidth),
          Container(
            height: 70,
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20 , vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(20), bottomStart: Radius.circular(20))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Under supervision',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold ,
                        color: Colors.black
                      ),
                    ),

                    Text(
                      'M. Dalia Kassab',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Under supervision',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold ,
                          color: Colors.black
                      ),
                    ),

                    Text(
                      '3 months',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 15,),
          
           Padding(
            padding:const  EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Text(
                  'Course details:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                 const SizedBox(height: 10,),

                 buildRow(text: 'The required number is selected and then contacted.'),
                 const SizedBox(height: 10,),
                 buildRow(text: ' Frontal and other meetings via Zoom technology.'),
                const SizedBox(height: 10,),
                 buildRow(text: ' Frontal and other meetings via Zoom technology.'),
                const SizedBox(height: 10,),
                 buildRow(text: 'The trainee gets a certificate from Learn More.'),
                const SizedBox(height: 10,),
                 buildRow(text: 'The trainee gets the full course, recorded audio and\n photo to keep it for life.'),
                const SizedBox(height: 10,),
                 buildRow(text: 'The course ends with a workshop (Freelancer)\n to get a job on self-employment platforms.'),

                const SizedBox(height: 15,),

                const Text(
                  'Important conditions for registration',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 15,),

                buildRow(text: 'The applicant must be at least 18 years old.'),
                const SizedBox(height: 10,),
                buildRow(text: 'The ability to commit to the course.'),
                const SizedBox(height: 10,),
                buildRow(text: 'Tag your interested friends and\n share the post to benefit.'),
                const SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('To contact the course instructor ?'),
                    TextButton(
                      onPressed: () {},
                      child:const Text(
                        'Press here',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                    ),

                  ],
                ),


                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/dataRecording_screen'),
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
                    'Submission of the application',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildRow({required String text}) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     width: 10,
                     height: 10,
                     decoration: BoxDecoration(
                       color:const Color(0xFF852530),
                       borderRadius: BorderRadiusDirectional.circular(10)
                     ),
                   ),

                   const SizedBox(width: 5,),

                    Text(
                     text,
                   style:const TextStyle(
                     fontSize: 14,
                   ),),


                 ],
               );
  }
}
