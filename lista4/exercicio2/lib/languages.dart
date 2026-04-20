import 'package:flutter/material.dart';
  
class Languages extends StatelessWidget {
  final dynamic largura;

  const Languages({super.key, this.largura});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
          ),
          width: largura ?? MediaQuery.of(context).size.width,
          child: Center(child: Text("Dart"))
        ),
         Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
          ),
          width: largura ?? MediaQuery.of(context).size.width,
          child: Center(child: Text("JavaScript"))
        ),
         Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
          ),
          width: largura ?? MediaQuery.of(context).size.width,
          child: Center(child: Text("PHP"))
        ),
         Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
          ),
          width: largura ?? MediaQuery.of(context).size.width,
          child: Center(child: Text("C++"))
        ),
      ],
    );
  }
}
