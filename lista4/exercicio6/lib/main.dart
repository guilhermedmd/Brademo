import 'package:exercicio6/card_custom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Kindacode.com")),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add, color: Colors.white,),
      shape: CircleBorder(),
      backgroundColor: Colors.blue,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
              ),
              child: Text("View completed tasks"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text("You have 5 uncompleted tasks", style: TextStyle(fontSize: 20),),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 5, // Define que teremos apenas 3 iten
              itemBuilder: (context, index) {
                return CardCustom();
              },
            ),
          ),
        ],
      ),
    );
  }
}
