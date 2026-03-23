import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: MyApp()
));

class MyApp extends StatelessWidget{
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Bottom menu"), backgroundColor: Colors.blue),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Call"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.route),
            label: "Route"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label:"Share"
          )
        ]
      )
    );
  }
}