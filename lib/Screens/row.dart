// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Row Widget Example"),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.star, color: Colors.yellow),
//               SizedBox(width: 10), // Adds space between the icons
//               Text("Star Icon"),
//               SizedBox(width: 10),
//               Icon(Icons.favorite, color: Colors.red),
//             ],
//           ),
//         ),
//      ) ;
//   }
// }

import 'dart:developer';

import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  MyRow({super.key});

  TextStyle cicleStyle = TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23.0);

  var widgth10 = SizedBox(
    width: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Widget"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          commonRow(),
          commonIcon(),
          commonImage(),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            title: Text("List Tile"),
            subtitle: Text("This is a list tile"),
            trailing: IconButton(
                onPressed: () {
                  print("here is icon");
                },
                icon: Icon(Icons.notifications_outlined)),
            onTap: () {
              print("here is ontabed");
            },
          )

          //   commonRow(),
          //   commonIcon(),
          //  commonImage(),
        ],
      ),
    );
  }

  Row commonImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/deer.png",
          height: 100,
          width: 100,
        ),
        widgth10,
        Image.asset(
          "assets/deer.png",
          scale: 7,
        ),
        widgth10,
        Image.asset("assets/deer.png", scale: 9),
      ],
    );
  }

  Row commonIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.star,
          color: Colors.purple,
          size: 70.0,
        ),
        IconButton(
            onPressed: () {
              log("this icon button tabed");
            },
            icon: Icon(
              Icons.face,
              size: 100,
              color: Colors.yellow,
            )),
        Icon(
          Icons.person,
          color: Colors.green,
          size: 70.0,
        ),
      ],
    );
  }

  Row commonRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.red,
            child: Text(
              "A",
              style: cicleStyle,
            ),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.yellow,
            child: Text("B", style: cicleStyle),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.green,
            child: Text(
              "C",
              style: cicleStyle,
            ),
          ),
        ]);
  }
}
