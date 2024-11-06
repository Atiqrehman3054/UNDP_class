import 'dart:math';

import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  ListViewBuilderScreen({super.key});
  final List<String> name = [
    "Adil",
    "Ameen",
    "Noor",
    "Saad",
    "hamza",
    // "saqaib",
    // "fahad",
    // "hammad",
    // "atta",
    // "qasir",
    // "naseem",
    // "waseem",
    // "usman"
  ];

  List details = [
    "watch man",
    "Software",
    "student",
    "cook",
    "doctor",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView.builder'),
        ),
        body: Column(
          children: [
            Expanded(
          
              child: ListView.builder(
                  itemCount: details.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Text(details[index].substring(0, 1)),
                      ),
                      title: Text(name[index]),
                      subtitle: Text(details[index]),
                      trailing: IconButton(
                          onPressed: () {
                            print("here is icon");
                          },
                          icon: Icon(Icons.notifications_outlined)),
                      onTap: () {
                        print("here is ontabed");
                      },
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 2,
                child: GridView.builder(
                  
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.2, 
                      
                    
                    ),
                    itemCount: 200,
                    
                    itemBuilder: (context, index) {
                      final Random random = Random();
                       Color getRandomColor() {
                      return Color.fromARGB(
                        255, // Alpha
                        random.nextInt(256), // Red
                        random.nextInt(256), // Green
                        random.nextInt(256), // Blue
                      );
}
  int randomNumber = random.nextInt(100);
                      return Container(
                        alignment: Alignment.center,
                        color: getRandomColor(),
                        child: Text(randomNumber.toString(), style: TextStyle(fontSize: 30,color: Colors.white),),
                      );
                    }))
          ],
        ));
  }
}
