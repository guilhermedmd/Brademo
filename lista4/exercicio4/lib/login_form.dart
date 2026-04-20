import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormWidget();
}

class _LoginFormWidget extends State<LoginForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selecionarData(BuildContext context) async {
    final DateTime? colhida = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Data inicial
      firstDate: DateTime(2000), // Data mínima permitida
      lastDate: DateTime(2100), // Data máxima permitida
    );
    if (colhida != null) {
      setState(() {
        // Atualiza o texto do controlador para refletir na UI
        _dateController.text =
            "${colhida.day}/${colhida.month}/${colhida.year}";
      });
    }
  }

  Widget build(BuildContext context) {
    void showInfo(
      TextEditingController _nameController,
      TextEditingController _phone,
      TextEditingController _dateController,
    ) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Name: ${_nameController.text}\nPhone:${_phone.text}\nDate:${_dateController.text}",
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.people),
            ),
            Expanded(
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: UnderlineInputBorder(),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.phone),
            ),
            Expanded(
              child: TextField(
                controller: _phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  hintText: "Phone",
                  border: UnderlineInputBorder(),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.date_range),
            ),
            Expanded(
              child: TextField(
                controller: _dateController,
                decoration: InputDecoration(
                  hintText: "born",
                  border: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                onTap: () => _selecionarData(context),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            onPressed: () {
              showInfo(_nameController, _phone, _dateController);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              backgroundColor: Colors.grey,
              foregroundColor: Colors.black,
            ),
            child: Text("Submit"),
          ),
        ),
      ],
    );
  }
}
