import 'dart:convert';
import 'package:http/http.dart' as http;

class Api{

  Future<dynamic> requisicaoGet() async{
    var url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');
    var response = await http.get(url, headers: {'Content-Type': 'application/json'});
    return response.body;
  
  }
  Future<List<dynamic>> requisicaoGetAll() async{
    var url = Uri.https('jsonplaceholder.typicode.com', 'posts');
    var response = await http.get(url, headers: {'Content-Type': 'application/json'});
    List<dynamic> listaPosts = jsonDecode(response.body);
    return listaPosts;
  }

  Future<dynamic> requisicaoPost() async{
    var url = Uri.https('jsonplaceholder.typicode.com', 'posts');
    var response = await http.post(url, body: {"name":"teste", "color":"blue"});
    return response.body;
  }

  Future<dynamic> requisicaoPut() async{
    var url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');
    var response = await http.put(url, body: {"name":"testeDePut", "color":"marelo"});
    return response.body;
  }

  Future<String> requisicaoDelete() async{
    var url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');
    var response = await http.delete(url, headers: {'Content-Type': 'application/json'});
    return "Status code: ${response.statusCode}";
  }
}