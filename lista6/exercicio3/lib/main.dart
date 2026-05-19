import 'package:exercicio3/tarefaProvider.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async {
  final provider = await TarefaProvider.create();
  runApp(ChangeNotifierProvider.value(value: provider, child: MyApp()));
}

class MyApp extends StatelessWidget {
  TextEditingController _novaTarefa = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Lista de Tarefas")),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: TextField(controller: _novaTarefa),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<TarefaProvider>().adicionarTarefa(
                      _novaTarefa.text,
                    );
                  },
                  child: Icon(Icons.save_as_outlined),
                ),
              ],
            ),
            Expanded(
              child: Consumer<TarefaProvider>(
                builder: (context, provider, child) {
                  return ListView.builder(
                    itemCount: provider.boxTarefas.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Expanded(
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 25),
                              Text(provider.boxTarefas.getAt(index)),
                              IconButton(
                                onPressed: () {
                                  context.read<TarefaProvider>().removeTarefa(
                                    provider.boxTarefas.getAt(index),
                                  );
                                },
                                icon: Icon(Icons.highlight_remove_sharp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
