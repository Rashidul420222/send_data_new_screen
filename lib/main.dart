import 'package:flutter/material.dart';
import './screen/title_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Todo"),
        ),
        body: TodoScreen(),
      ),
    );
  }
}
