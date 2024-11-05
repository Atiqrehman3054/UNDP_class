import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Multiple Icons Example"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, color: Colors.blue, size: 30.0),
              Icon(Icons.favorite, color: Colors.pink, size: 30.0),
              Icon(Icons.settings, color: Colors.grey, size: 30.0),
            ],
          ),
        ),
    );
  }
}
