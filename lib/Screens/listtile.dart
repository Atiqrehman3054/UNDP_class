import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTile Example"),
      ),
      body: Center(
        child: ListTile(
          leading: Icon(Icons.person), // Icon on the left side
          title: Text("John Doe"), // Main title
          subtitle: Text("Software Developer"), // Subtitle text
          trailing: Icon(Icons.arrow_forward), // Icon on the right side
          onTap: () {
            print("Tapped on ListTile!");
          },
        ),
      ),
    );
  }
}
