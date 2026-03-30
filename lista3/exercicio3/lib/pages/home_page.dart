import 'package:flutter/material.dart';

class home_page extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Flutter By Example", style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 370,
              width: 300,
              child: Image.network("https://cdn.iconscout.com/icon/free/png-256/free-flutter-logo-icon-svg-download-png-3030139.png"),
            )
          ],
          
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.star, color: Colors.white,),
      ),
      );
  }
}