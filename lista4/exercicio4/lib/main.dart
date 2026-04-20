import 'package:exercicio4/login_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: MyApp()
    )
  ));
}

class MyApp extends StatelessWidget{
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Form Demo"), backgroundColor: Colors.blue,),
      body: LoginForm(),
      );
    
  }
}