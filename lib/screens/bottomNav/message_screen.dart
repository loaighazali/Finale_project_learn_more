import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
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
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 200,
                width: double.infinity,
                child: Image(
                  image: AssetImage(
                    'assets/lunch_img.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 1,
                color: const Color(0xFFDDAD38),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Contact via:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '+9725369528',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'In front of Al-Azhar\n University _ Vision Tower',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.video_call,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Learn more YouTube page',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.face,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Learn more',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.insert_chart,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Learn more',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Course instructor',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(tileColor: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(15),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/wats.png'),
                ),
                title: Text(
                  'M. Dalia Kassab',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('UX-UI course instructor'),
                trailing: IconButton(
                  color: Color(0xFFE3C163),
                  onPressed: () {},
                  icon: Icon(
                    Icons.water_drop,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
