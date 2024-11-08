

 import 'package:flutter/material.dart';
import 'package:ui_learing/Course/constants/fonts.dart';

Container commonTextfeild({required TextEditingController controller, required String title, required IconData iconName,required bool ispassword }) {
    return Container(
             height: 100,
          width: 380,
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: firstStyle.copyWith(
                  color: Colors.black,
                  fontSize: 20

                ),),
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: title,
                    hintText: "xyz@gmail.com",
                    prefixIcon: Icon(iconName),
                    // prefix: Icon(Icons.email),
                    border: OutlineInputBorder()
                  ),
                  obscureText: ispassword,
                ),
              ],
            ),
          );
  }
