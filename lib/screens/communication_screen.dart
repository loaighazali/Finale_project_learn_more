import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunicationScreen extends StatefulWidget {
   CommunicationScreen({Key? key , required this.lable , required this.img}) : super(key: key);

  String lable = 'UI-UX';
  String img = 'assets/ui_im.png';

  @override
  State<CommunicationScreen> createState() => _CommunicationScreen();
}

class _CommunicationScreen extends State<CommunicationScreen> {
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
        title:  Text(widget.lable,
            style:const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Image(image: AssetImage(widget.img), fit: BoxFit.cover),

              const SizedBox(
                height: 80,
              ),

              Table(
                border: TableBorder.symmetric(
                    inside:const  BorderSide(color: Color(0xFFDDAD38))),
               // defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
                children: const [
                  TableRow(
                      children: [
                    Text(
                      textAlign: TextAlign.center,
                        'the days',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF852530))),
                    Text(
                        textAlign: TextAlign.center,
                        'the hour',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF852530))),
                    Text(
                        textAlign: TextAlign.center,
                        'duration',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF852530))),
                  ]),
                  TableRow(children: [
                    Text(
                        textAlign: TextAlign.center,
                        'Saturday',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                    Text(
                        textAlign: TextAlign.center,
                        '11 am',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                    Text(
                        textAlign: TextAlign.center,
                        '3 hours',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                  ]),
                  TableRow(children: [
                    Text(
                        textAlign: TextAlign.center,
                        'Monday',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                    Text(
                        textAlign: TextAlign.center,
                        '2 pm',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                    Text(
                        textAlign: TextAlign.center,
                        '1 hour',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                  ]),
                  TableRow(children: [
                    Text(
                        textAlign: TextAlign.center,
                        'Wednesday',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                    Text(
                        textAlign: TextAlign.center,
                        '9 am',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                    Text(
                        textAlign: TextAlign.center,
                        '1.5 hours',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                  ]),
                  TableRow(children: [
                    Text(
                        textAlign: TextAlign.center,
                        'Thursday',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                    Text(
                        textAlign: TextAlign.center,
                        '3 pm',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                    Text(
                        textAlign: TextAlign.center,
                        '2 hours',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
