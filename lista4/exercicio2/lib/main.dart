import 'package:exercicio2/button_custom.dart';
import 'package:exercicio2/languages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
   theme: ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,

    colorScheme: ColorScheme.dark(
      primary: Colors.white,
      onPrimary: Colors.white,

      secondary: Colors.white,
      onSecondary: Colors.white,
    ),

    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
    ),
  ),
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return LayoutBuilder(
      
        builder: (context, constraints){
          bool isHorizontal = constraints.maxWidth > constraints.maxHeight;
          if(isHorizontal){
            return Scaffold(
              appBar: AppBar(title: Center(child: Text("Responsive Layout")),),
              body: Row(       
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5
                      ),
                      Text("Cheetah Coding", style: TextStyle(fontSize: 25),),
                      Padding(padding: EdgeInsets.only(top: 25)
                      ,child: Column(
                        children: [
                             ButtonCustom(texto: "botao1",),
                       SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05
                      ),
                      ButtonCustom(texto: "botao2",),
                        ],
                      ))
    
                    ],
                  ),
                  
                  
                  Languages(largura: MediaQuery.of(context).size.width * 0.5)
                ],
              ),
            );
          
          }else{
            return Scaffold(
              appBar: AppBar(title: Center(child: Text("Responsive Layout")),),
              body: Column(
                children: [
                  Text("Cheetah Coding", style: TextStyle(fontSize: 25),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          ButtonCustom(texto: "botao1",),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                          ButtonCustom(texto: "botao2",)
                        ],
                      ),
                      )
                      
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1)
                  ,child: Languages())
                  
                ],
              ),
            );
          }
        }
      );
    
  }
  
}