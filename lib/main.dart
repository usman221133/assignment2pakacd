import 'package:flutter/material.dart';
import 'package:pak_ui/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[800],
          accentColor: Colors.blueAccent
      ),
      home: Home(),

    );
  }
}
