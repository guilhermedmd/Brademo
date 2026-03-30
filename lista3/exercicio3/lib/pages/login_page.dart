import 'package:exercicio3/widget/login_form.dart';
import 'package:flutter/material.dart';

class login_page extends StatelessWidget {
  final TextEditingController _user_controller = TextEditingController();
  final TextEditingController _senha_controller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 350,
              child: Image.network(
                "https://static.vecteezy.com/system/resources/previews/072/969/333/non_2x/flutter-logo-icon-high-resolution-free-vector.jpg",
              ),
            ),
            login_form()
          ],
        ),
      ),
    );
  }
}
