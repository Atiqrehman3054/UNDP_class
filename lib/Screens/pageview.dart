import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Example'),
      ),
      body: PageView(
        // scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Center(child: Text('Page 1', style: TextStyle(fontSize: 32, color: Colors.white))),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text('Page 2', style: TextStyle(fontSize: 32, color: Colors.white))),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text('Page 3', style: TextStyle(fontSize: 32, color: Colors.white))),
          ),
          Container(
            
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              
              // image: DecorationImage(image: const AssetImage("assets/deer.png"), fit: BoxFit.fill)
       
            ),
            child: SizedBox(
              height: 600,
              child: Stack(
                children: [
                 Image.asset("assets/deer.png",fit: BoxFit.cover,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.favorite,size: 60,)),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(Icons.thumb_down,size: 60,)
                  ),
                      Image.asset("assets/deer.png",fit: BoxFit.cover,),  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
