import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: Scaffold(),
      ) 
      
    );
  }
}
