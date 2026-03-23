import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Flutter layout demo"))),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 300,
              width: 750,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(
                  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/17/7f/a5/big-beach.jpg?w=900&h=500&s=1',
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Praia",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Praia na costa de algum lugar, Planeta Terra"),
                    ],
                  ),
                  SizedBox(width: 210),
                  Icon(Icons.star, color: Colors.orange),
                  SizedBox(width: 10),
                  Text("41"),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.call), Text("Call")],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.route), Text("Route")],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Icon(Icons.share), Text("Share")],
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "No mundo atual, a revolução que trouxe o software livre faz parte de um processo de gerenciamento de memória avançado das ferramentas OpenSource. Por outro lado, a percepção das dificuldades cumpre um papel essencial na implantação dos procolos comumente utilizados em redes legadas. Enfatiza-se que a utilização de recursos de hardware dedicados exige o upgrade e a atualização do sistema de monitoramento corporativo.",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
