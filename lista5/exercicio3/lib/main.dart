import 'package:exercicio3/api/api.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  dynamic dados;


  Future<void> carregarDadosGet() async {
    var resposta = await Api().requisicaoGet();
    setState(() {
      dados = resposta;
    });
  }

  Future<void> carregarDadosGetAll() async {
    var resposta = await Api().requisicaoGetAll();
    setState(() {
      dados = resposta;
    });
  }

  Future<void> carregarDadosPost() async {
    var resposta = await Api().requisicaoPost();
    setState(() {
      dados = resposta;
    });
  }

  Future<void> carregarDadosPut() async {
    var resposta = await Api().requisicaoPut();
    setState(() {
      dados = resposta;
    });
  }

  Future<void> carregarDadosDelete() async {
    var resposta = await Api().requisicaoDelete();
    setState(() {
      dados = resposta;
    });
  }

  Widget exibirDados() {
    if (dados == null) {
      return Text("");
    }

    if (dados is List) {
      return Expanded(
        child: ListView.builder(
          itemCount: dados.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(dados[index]["title"]),
              subtitle: Text(dados[index]["body"]),
            );
          },
        ),
      );
    }

    return Padding(padding: EdgeInsets.all(15), child: Text(dados.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(padding: EdgeInsets.all(25), child: ElevatedButton(
                onPressed: () async {
                  await carregarDadosGet();
                },
                child: Text("Get"),
                ),
              ),
              Padding(padding: EdgeInsets.all(25), child: ElevatedButton(
                onPressed: () async {
                  await carregarDadosGetAll();
                },
                child: Text("GetAll"),
                ),
              ),
              Padding(padding: EdgeInsets.all(25), child: ElevatedButton(
                onPressed: () async {
                  await carregarDadosPost();
                },
                child: Text("Post"),
              ),),

              Padding(padding: EdgeInsets.all(25), child: ElevatedButton(
                onPressed: () async {
                  await carregarDadosPut();
                },
                child: Text("Put"),
              ),),
              Padding(padding: EdgeInsets.all(25), child: ElevatedButton(
                onPressed: () async {
                  await carregarDadosDelete();
                },
                child: Text("Delete"),
              ),),
              
            ],
          ),
          SizedBox(height: (MediaQuery.of(context).size.height * 0.1)),
          
          exibirDados()
        ],
      ),
    );
  }
}
