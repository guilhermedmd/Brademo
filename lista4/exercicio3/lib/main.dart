import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
      bool tela = false;

  Widget build(BuildContext context){
    return  
      Column(
        children: [
          Padding(padding: EdgeInsets.all(12),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){setState(() {
              tela = false;
            });}, child: Text("1", style: TextStyle(color: Colors.black),)),
            ElevatedButton(onPressed: (){setState(() {
              tela = true;
            });}, child: Text("2", style: TextStyle(color: Colors.black),)),
            
          ],
        ),
          ),
          
        
          Expanded(child: tela ? Widget1() : Widget2())
        
        ],
      );
  }
}

class Widget1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
  
}

class Widget2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
        color: Colors.red,
        child: Padding(padding: EdgeInsets.all(15), child:Container(
          color: Colors.green,
        ),
        ),
      ),
      
      
    );

    // Causa erro de constraints
//     return Column(
//   children: [
//     Container(
//       height: double.infinity,
//     )
//   ],
// );

  }
  
}