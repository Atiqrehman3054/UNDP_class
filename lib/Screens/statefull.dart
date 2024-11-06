

import 'package:flutter/material.dart';


class testingWidget extends StatefulWidget {
  const testingWidget({super.key});

  @override
  State<testingWidget> createState() => _testingWidgetState();
}

class _testingWidgetState extends State<testingWidget> {
  @override
   void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("here is my didChangeDependencies");
  }
  @override
  void initState() {
    super.initState();
    print("here is my initState");
  }

  
 

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("recall my complete screen");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Here is counter value  $counter",
            style: TextStyle(fontSize: 24),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  counter++;
                  print("here is counter value $counter");
                });
              },
              child: Text("Increment Data"))
        ],
      ),
    );
  }
}















class ThemeSwitcherPage extends StatefulWidget {
 @override
 _ThemeSwitcherPageState createState() => _ThemeSwitcherPageState();
}


class _ThemeSwitcherPageState extends State<ThemeSwitcherPage> {
 bool isDarkMode = false; // Tracks the current theme state


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Dark/Light Theme Toggle",style: TextStyle(
        color: isDarkMode ? Colors.white: Colors.black,
       ),),
       backgroundColor: isDarkMode ? Colors.black : Colors.blue,
       actions: [
         IconButton(
           icon: Icon(isDarkMode ? Icons.wb_sunny : Icons.nights_stay ,color: isDarkMode ? Colors.white: Colors.black,),
           onPressed: () {
             setState(() {
               isDarkMode = !isDarkMode; // Toggle theme mode
             });
           },
         ),
       ],
     ),
     body: Container(
       color: isDarkMode ? Colors.black : Colors.white, // Background color
       alignment: Alignment.center,
       child: Text(
         "Hello, Flutter!",
         style: TextStyle(
           fontSize: 24,
           color: isDarkMode ? Colors.white : Colors.black, // Text color
         ),
       ),
     ),
   );
 }
}
