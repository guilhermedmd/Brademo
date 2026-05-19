import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';

class TarefaProvider extends ChangeNotifier{
  late Box boxTarefas;

  TarefaProvider._();
  static Future<TarefaProvider> create() async{
    final provider = TarefaProvider._();
    await Hive.initFlutter();
    provider.boxTarefas = await Hive.openBox("tarefas");
    return provider; 
  }

  void adicionarTarefa(String NovaTarefa){
    boxTarefas.put(NovaTarefa, NovaTarefa);
    notifyListeners();
  }

  void removeTarefa(String Tarefa){
    boxTarefas.delete(Tarefa);
    notifyListeners();
  }
}