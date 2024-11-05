import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Text('A'),
            ),
            title: Text('Alice'),
            subtitle: Text('Hello! How are you?'),
            trailing: Text('10:00 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text('B'),
            ),
            title: Text('Bob'),
            subtitle: Text('I am fine, thank you!'),
            trailing: Text('10:01 AM'),
          ),
          // Add more ListTiles here
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChatScreen(),
  ));
}