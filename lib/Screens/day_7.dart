import 'package:flutter/material.dart';

class Day7 extends StatelessWidget {
  const Day7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Day 7'),
      // ),

      body: ListView(
        children: [
          commonRow(ontabvlaue: "deer no 1"),
          commonRow(),
          commonButton(
              ButtonName: "firstButton",
              onpressed: () {
                print("button pressed");
              }),
              InkWell(
  onTap: () {
    print("InkWell tapped");
  },
  splashColor: Colors.blue.withOpacity(0.3),
  borderRadius: BorderRadius.circular(10), // Rounded ripple effect
  child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.lightBlueAccent,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text("Tap Me"),
  ),
),


          commonRow(),
          commonButton(
              ButtonName: "scondButton",
              onpressed: () {
                print("button pressed 2 call API data");
              }),
          commonRow(),
          commonButton(ButtonName: "thirdButton", onpressed: () {
            print("button pressed 3 call firebase data");
          }),
          commonRow(ontabvlaue: "route to last screen"),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "add Student data",
        onPressed: () {
          print("here is floating action button");
        },
        backgroundColor: Colors.red,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }

  ElevatedButton commonButton(
      {String ButtonName = "", required Function() onpressed}) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(double.infinity, 70),
        foregroundColor: Colors.red,
        backgroundColor: Colors.yellow, // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      child: Text(
        ButtonName,
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  Column commonRow({String ontabvlaue = ""}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                print("$ontabvlaue");
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/deer.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                // image: DecorationImage(image:
                // AssetImage("assets/deer.png"),
                // fit: BoxFit.cover,
                // ),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 47,
                        backgroundImage: AssetImage("assets/deer.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "John Doe",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              width: 78,
                              child: Text(
                                "Software Engineer here is long des",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                        "Jane Smith, a passionate Graphic Designer with over 5 years of experience in creating stunning visuals. I love transforming ideas into beautiful designs"),
                  )
                ],
              ),
            ),
          ],
        ),
        Divider(
          // endIndent: 20,
          indent: 60,
          thickness: 2,
          color: Colors.black,
        ),
      ],
    );
  }
}
