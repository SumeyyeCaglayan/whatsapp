import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatScreen();
}

class _ChatScreen extends State {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fakeData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(fakeData[i].avatarURL),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  fakeData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  fakeData[i].time,
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                fakeData[i].message,
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
