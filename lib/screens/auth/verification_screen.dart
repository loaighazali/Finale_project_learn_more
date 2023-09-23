import 'package:final_project/widget/code_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  late TextEditingController _firstEditingController;
  late TextEditingController _secondEditingController;
  late TextEditingController _thirdEditingController;
  late TextEditingController _forthEditingController;

  late FocusNode _firstFocusNode;

  late FocusNode _secondFocusNode;

  late FocusNode _thirdFocusNode;

  late FocusNode _forthFocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstEditingController = TextEditingController();
    _secondEditingController = TextEditingController();
    _thirdEditingController = TextEditingController();
    _forthEditingController = TextEditingController();

    _firstFocusNode = FocusNode();
    _secondFocusNode = FocusNode();
    _thirdFocusNode = FocusNode();
    _forthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstEditingController.dispose();
    _secondEditingController.dispose();
    _thirdEditingController.dispose();
    _forthEditingController.dispose();

    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _forthFocusNode.dispose();

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
        )
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsetsDirectional.only(top: 130, bottom: 35),
                child: Image(
                  image: AssetImage('assets/vref.png'),
                ),
              ),
            ),
            const Text(
              'Verification code',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 70),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 51,
                    height: 90,
                    child: CodeTextField(
                      controller: _firstEditingController,
                      focusNode: _firstFocusNode,
                      onChange: (value) {
                        if (value.isNotEmpty) {
                          _secondFocusNode.requestFocus();
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 51,
                    height: 90,
                    child: CodeTextField(
                      controller: _secondEditingController,
                      focusNode: _secondFocusNode,
                      onChange: (value) {
                        value.isNotEmpty
                            ? _thirdFocusNode.requestFocus()
                            : _firstFocusNode.requestFocus();
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 51,
                    height: 90,
                    child: CodeTextField(
                      controller: _thirdEditingController,
                      focusNode: _thirdFocusNode,
                      onChange: (value) {
                        value.isNotEmpty
                            ? _forthFocusNode.requestFocus()
                            : _secondFocusNode.requestFocus();
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 51,
                    height: 90,
                    child: CodeTextField(
                      controller: _forthEditingController,
                      focusNode: _forthFocusNode,
                      onChange: (value) {
                        if (value.isEmpty) {
                          _thirdFocusNode.requestFocus();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: const Color(0xFF852530),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(5),
                  )),
              child: const Text(
                'I Agree',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
