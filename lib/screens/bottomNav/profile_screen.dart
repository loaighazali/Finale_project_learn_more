import 'package:final_project/controllers/fb_auth_controller.dart';
import 'package:final_project/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/profile_list.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with Helpers{

  final List<ProfileList> _list =[
    ProfileList(iconData: Icons.settings,lable: 'Settings'),
    ProfileList(iconData: Icons.favorite,lable: 'Favorites'),
    ProfileList(iconData: Icons.star,lable: 'Rate us'),
    ProfileList(iconData: Icons.share,lable: 'Refer a Friend'),
    ProfileList(iconData: Icons.help,lable: 'Help '),
    ProfileList(iconData: Icons.logout,lable: 'Log Out'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: const Color(0xFF852530),
            child: Stack(
              children: [
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/person_img.png'),
                        radius: 50,
                      ),
                      Text(
                        'Learn More',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 35,
                  right: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit_road,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.separated(
            physics:const NeverScrollableScrollPhysics(),
            padding: EdgeInsetsDirectional.zero,
            shrinkWrap: true,
            separatorBuilder: (context, index) => Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            itemCount: _list.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 70,
                child: MaterialButton(
                  onPressed: () async{
                    if(index == 5 ) {
                      await FbAuthController().signOut();
                      showSnackBar(context: context, message: 'Log Out is Succsuffly');
                      Navigator.pushReplacementNamed(context, '/signIn_screen');
                    }

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(_list[index].iconData, color:const Color(0xFFDDAD38),),
                        const SizedBox(width: 15,),
                        Text(_list[index].lable,style:const TextStyle(color: Colors.black ,fontSize: 14)),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
