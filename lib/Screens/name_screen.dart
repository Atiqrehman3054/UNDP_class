import 'package:flutter/material.dart';

class nameScreen extends StatelessWidget {
  nameScreen({super.key});
  String name = "UNDP class";
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Text(name),
          
        ],
      ),
    ));
  }
}


