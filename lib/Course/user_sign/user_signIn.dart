import 'package:flutter/material.dart';
import 'package:ui_learing/Course/chat_screen/chat_screen.dart';
import 'package:ui_learing/Course/constants/colors.dart';
import 'package:ui_learing/Course/constants/fonts.dart';
import 'package:ui_learing/Course/constants/textfeild.dart';

class UserSigninScreen extends StatelessWidget {
  UserSigninScreen({super.key});
  AppColors colors = AppColors();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors.secondaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            commonTextfeild(
              controller: emailController,
              title: "Email",
              iconName: Icons.email,
              ispassword: false,
            ),
            commonTextfeild(
                controller: passwordController,
                title: "Password",
                iconName: Icons.person,
                ispassword: true),
            height15,
            ElevatedButton(
              onPressed: () {
                print('Email: ${emailController.text}');
                print('Password: ${passwordController.text}');

                if (emailController.text != "" &&
                    passwordController.text != "") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  );
                } else {
                    final snackBar = SnackBar(
                      behavior: SnackBarBehavior.floating,
                    content: Text('Please enter your password and email'),
                    backgroundColor: Colors.red,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              style: ElevatedButton.styleFrom(
                // fixedSize: Size(300, 60),
                backgroundColor: Colors.amber,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              child: Text(
                'Sign In',
                style: firstStyle,
              ),
            )
          ],
        ));
  }
}
