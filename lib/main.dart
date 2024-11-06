import 'package:flutter/material.dart';
import 'package:ui_learing/Course/chat_screen/chat_screen.dart';
import 'package:ui_learing/Course/splash_screen/splash_screen.dart';
import 'package:ui_learing/Screens/container.dart';
import 'package:ui_learing/Screens/list_screen.dart';
import 'package:ui_learing/Screens/name_screen.dart';
import 'package:ui_learing/Screens/row.dart';
import 'package:ui_learing/Screens/statefull.dart';
import 'package:ui_learing/Screens/thrid_day.dart';

import 'Screens/day_7.dart';

main() {
  runApp(const firstClass());
}

class firstClass extends StatelessWidget {
  const firstClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
             primary: Colors.amber),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(), // Defines the dark theme for the app
      themeMode: ThemeMode.system,
      home: ChatScreen(),
    );
  }
}

class TextWiget extends StatelessWidget {
  const TextWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
