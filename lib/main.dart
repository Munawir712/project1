import 'package:flutter/material.dart';
import 'package:project1/screen/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimeKu',
      home: Menu(),
    );
  }
}

