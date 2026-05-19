import 'package:exercicio2/main.dart';
import 'package:flutter/widgets.dart';

class Contador extends ChangeNotifier{
  int contador = 0;

  void incrementar(){
    contador += 1;
    notifyListeners();
  }

  void decrementar(){
    contador -= 1;
    notifyListeners();
  }

}
