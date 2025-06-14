// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Sohbetler",
            ),
            Tab(
              text: "Durum",
            ),
            Tab(
              text: "Aramalar",
            ),
          ],
        ),
        actions: <Widget>[Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: TabBarView(
        children: <Widget>[
          Text("Kamera"),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
        controller: _tabController,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("sohbet ekranı"),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
