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
          title: const Text('Text Widget Properties'),
        ),
        body: const Center(
          child: Text(
            'Flutter Text Widget Example',
            style: TextStyle(
              color: Colors.blue,               // text color
              fontSize: 24,                     // font size
              fontWeight: FontWeight.bold,      // font weight
              fontStyle: FontStyle.italic,      // font style
              letterSpacing: 2.0,               // spacing between letters
              wordSpacing: 5.0,                 // spacing between words
              decoration: TextDecoration.underline, // underline text
              decorationColor: Colors.red,      // color of decoration
              decorationStyle: TextDecorationStyle.dashed, // decoration style
            ),
            textAlign: TextAlign.center,        // alignment within the widget
            maxLines: 2,                        // maximum number of lines
            overflow: TextOverflow.ellipsis,    // handling overflow text
           softWrap: true,                     // wraps text if it overflows
            textDirection: TextDirection.ltr,   // sets the text direction
            locale: Locale('en', 'US'),         // language locale
            semanticsLabel: 'This is an example text', // accessibility label
          ),
        ),
      ),
    );
  }
}
