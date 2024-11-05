import 'package:flutter/material.dart';



class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image from Assets Example"),
        ),
        body: Center(
          child: Image.asset(
            'assets/deer.png',  // Path to your image in the assets folder
            width: 200,             // Set width if needed
            height: 200,            // Set height if needed
            fit: BoxFit.cover,      // Optional: Control how the image fits within the widget
          ),
        ),
      );
  }
}
