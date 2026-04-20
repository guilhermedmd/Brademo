import 'package:flutter/material.dart';

class CardCustom extends StatefulWidget {
  @override
  State<CardCustom> createState() => _CardCustomState();
}

class _CardCustomState extends State<CardCustom> {
  bool _checado = false;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          tileColor: Colors.amber,
          title: Text("Título"),
        subtitle: Text("descricao"),
        trailing: Checkbox(
          value: _checado,
          onChanged: (value) {
            setState(() {
              _checado = value ?? false;
            });
          },
        ),
      ),
            

        
    );
  }
}
