import 'package:exercicio3/model/login.dart';
import 'package:exercicio3/pages/home_page.dart';
import 'package:flutter/material.dart';

class login_form extends StatelessWidget{
  final TextEditingController _user_controller = TextEditingController();
  final TextEditingController _password_controller = TextEditingController();
  

  void validar(_user_controller, _password_controller, context){
    Login user = new Login("admin", "123");
    if(_user_controller.text == user.get_login && _password_controller.text == user.get_password){
      Navigator.push(context, MaterialPageRoute(builder: (context) => home_page()));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("ERRO: login inválido!"))
      );
    }
  }

  Widget build (BuildContext context){
    return SizedBox(
              width: 600,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: TextField(
                      controller: _user_controller,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: TextField(
                      controller: _password_controller,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        validar(_user_controller, _password_controller, context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 180,
                          vertical: 26,
                        ),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("New User? Create Account")],
                    ),
                  ),
                ],
              ),
            );
  }
}