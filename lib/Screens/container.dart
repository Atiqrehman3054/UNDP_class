import 'package:flutter/material.dart';

class FlutterDayFive extends StatelessWidget {
  const FlutterDayFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Text("Happy friday",style:  TextStyle(fontSize: 60),),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                
                  color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: 
                    AssetImage("assets/deer.png"),
                    fit: BoxFit.cover,
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
                  child:  Column(
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
                              Text("John Doe",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                              SizedBox(
                                width: 78,
                                child: Text("Software Engineer here is long des",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),)),
                            ],
                          )
                        ],
                      )
                       ,
                       Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Jane Smith, a passionate Graphic Designer with over 5 years of experience in creating stunning visuals. I love transforming ideas into beautiful designs"),
                       )
                     
                    ],
                  ),
                ),
             
              ],
            ),

                  Text("Happy friday",style:  TextStyle(fontSize: 60),),
         
         Container(
          height: 200,
          width: 200,
          
         )
        
          ],
        ),
      ),
    );
  }
}
