import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:MyApp()
));

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter is fun!"),
        backgroundColor: Colors.green
      ),
      body: Column(
         children:[
           SizedBox(height: 40),
           Padding(padding: EdgeInsets.only(left: 50),
            child: Container(
              color: Colors.red,
              height: 150,
              width: 150,
              child: Row(
                children:[
                  Text("Hi mom"),
                  Icon(Icons.star, color: Colors.white)
              ])
            )            
           )
         ]
      )
    );
  }
}