import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget{
  final String? texto;

  const ButtonCustom({super.key, this.texto});
  Widget build(BuildContext context){
    return ElevatedButton(onPressed: (){},
    style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          ),
          backgroundColor: Colors.white
    ),
   
    child: Text("$texto", style: TextStyle(color: Colors.black),)
    );
  }
}