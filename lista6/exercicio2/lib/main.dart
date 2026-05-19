import 'package:exercicio2/contador.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // Cria uma instância do contador
  runApp(ChangeNotifierProvider(create: (context) => Contador(), child: MyApp()));
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Contador>(builder: (context, contador, child) => Text(contador.contador.toString(), style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(20), child: ElevatedButton(onPressed: (){context.read<Contador>().incrementar();}, style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 50
                  ),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.zero)
                    
                  )
                ), child:Row(
                  children: [
                    Icon(Icons.add, size: 35, color: Colors.blueAccent,),
                    Text("Incrementar", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blue))
                  ],
                ))),
                Padding(padding: EdgeInsets.all(20), child: ElevatedButton(onPressed: (){context.read<Contador>().decrementar();}, style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 50
                  ),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.zero)
                    
                  )
                ), child: Row(
                  children: [
                    Icon(Icons.remove, size: 35, color: Colors.redAccent,),
                    Text("Decrementar", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.red))
                  ],
                ))
                )
              ],
            )
          ],
        )
      ),
    ),
    );
  }
}
