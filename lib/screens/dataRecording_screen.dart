import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/app_card.dart';

class DataRecordingScreen extends StatefulWidget {
  const DataRecordingScreen({Key? key}) : super(key: key);

  @override
  State<DataRecordingScreen> createState() => _DataRecordingScreenState();
}

class _DataRecordingScreenState extends State<DataRecordingScreen> {
  late TextEditingController _firstEditingController;

  late TextEditingController _secondEditingController;
  late TextEditingController _thirdEditingController;

  late TextEditingController _forthEditingController;

  late TextEditingController _fiveEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstEditingController = TextEditingController();
    _secondEditingController = TextEditingController();
    _thirdEditingController = TextEditingController();
    _forthEditingController = TextEditingController();
    _fiveEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstEditingController.dispose();
    _secondEditingController.dispose();
    _thirdEditingController.dispose();
    _forthEditingController.dispose();
    _fiveEditingController.dispose();
    super.dispose();
  }

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
      body: ListView(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 25, vertical: 20),
        children: [
          const Image(
            image: AssetImage('assets/data_img.png'),
          ),
          AppCard(
              controller: _firstEditingController, lable: 'The name is triple'),
          const SizedBox(
            height: 15,
          ),
          AppCard(
              controller: _secondEditingController,
              lable: 'Mobile number to contact (+972/+970).'),
          const SizedBox(
            height: 15,
          ),
          AppCard(controller: _thirdEditingController, lable: 'ID Number'),
          const SizedBox(
            height: 15,
          ),
          AppCard(
              controller: _forthEditingController, lable: 'University-major'),
          const SizedBox(
            height: 15,
          ),
          AppCard(
              controller: _fiveEditingController,
              lable: 'Notes/How interested are you in the course?'),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/successful_screen'),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsetsDirectional.zero,
                    backgroundColor: const Color(0xFF852530),
                    minimumSize: const Size(105, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          color: Color(0xFF707070),
                          width: 1,
                        ))),
                child: const Text(
                  'Send',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _firstEditingController.clear() ;
                    _secondEditingController.clear() ;
                    _thirdEditingController.clear() ;
                    _forthEditingController.clear() ;
                    _fiveEditingController.clear() ;
                  });
                },
                child:const Text(
                  'Erase the form',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
