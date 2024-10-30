

import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading:  CircleAvatar(
          radius: 10,
          child: Text("1",style: TextStyle(fontSize: 30),),
        ),
        backgroundColor: Colors.red,
      title: const Text("class",style: TextStyle(color: Colors.white),) ,

      ),


      body:  const Column(
        children: [


          CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage('https://i.imgur.com/6r7v8QF.jpg')),
          


          Text("UNDP", 
          style: TextStyle(color: Colors.red,
           fontSize: 50.0,
           fontWeight: FontWeight.bold,
           ),
           ),
        
        
        ],
      ),
    );
  }
}