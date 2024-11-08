import 'package:flutter/material.dart';
import 'package:ui_learing/Course/constants/colors.dart';
import 'package:ui_learing/Course/constants/fonts.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AppColors appColor = AppColors();

  @override
  Future<void> didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
 await   Future.delayed(Duration(seconds: 3), () {

       Navigator.pushNamed(context, '/second');

       

     

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.primaryColor,
      body: Column(
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
          Text(
            "Welcome In UnDP Class",
            style: firstStyle,
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
