import 'package:flutter/material.dart';
import 'package:ui_learing/Course/constants/colors.dart';
import 'package:ui_learing/Course/constants/fonts.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

 final AppColors appColor = AppColors();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: appColor.primaryColor,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 100.0,
              // backgroundColor: ,
              backgroundImage: NetworkImage('https://i.imgur.com/6r7v8QF.jpg'),
            ),


          ),
          height15,
          Text("Welcome In UnDP Class", style: firstStyle,),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
