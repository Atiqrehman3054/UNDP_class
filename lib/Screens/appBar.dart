import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Example'),      // Main title
          centerTitle: true,                  // Centers the title
          backgroundColor: Colors.blue,       // AppBar background color
          leading: IconButton(                // Icon on the left side
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [                          // Icons on the right side
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          elevation: 4.0,                     // Shadow under the AppBar
          shape: const RoundedRectangleBorder(      // Shape of the AppBar
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16),
            ),
          ),
          flexibleSpace: Container(           // Flexible space behind title
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          toolbarHeight: 70.0,                // Height of the AppBar
          titleSpacing: 20.0,                 // Spacing around the title
          toolbarOpacity: 1.0,                // Toolbar opacity
          bottomOpacity: 1.0,                 // Bottom part opacity
          automaticallyImplyLeading: false,   // Shows back button when needed
        ),
        body: Center(
          child: Text('Hello AppBar!'),
        ),
      ),
    );
  }
}
