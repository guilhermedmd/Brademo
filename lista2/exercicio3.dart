import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Usando Stack"), backgroundColor: Colors.blue),
      body: Stack(
        children: [
          
          Positioned(
            left: 70,
            top: 40,
            child: Container(
            height: 150,
            width: 150,
            color: Colors.green,
            child:Text("Green")
            ),
          ),
          
          Positioned(
            left: 140,
            top: 80,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.red,
              child:Text("Red")
            ),
          ),
          
         Positioned(
          left:210,
          top:120,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.purple,
            child:Text("Purple")
          ),
         )
        ],
      ),
    );
  }
}
