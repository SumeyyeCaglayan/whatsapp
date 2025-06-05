import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 7, 102, 91),
        hintColor: Color.fromARGB(255, 24, 214, 93),
      ),
      home: Home(),
    );
  }
}

