import 'package:flutter/material.dart';
// importa a biblioteca http
import 'package:http/http.dart' as http;
import 'dart:convert'; // biblioteca para decodificar os objetos json fazendo o parse

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Cria variavel para armazenar o cep digitado pelo usuario
  TextEditingController ncep = TextEditingController();
  String? logradouro;
  String? bairro;
  String? cidade;
  String? ddd;
  String? estado;

  // função que irá consultar o cep
  // async é de assincrono
  _consultaCep()async{
    // cria a variavel com a url para consultar o cep
    String url = "https://cep.awesomeapi.com.br/${ncep.text}";

    // cria uma variavel para armazenar a resposta do metodo http
    http.Response response;
    response = await http.get(Uri.parse(url));

    // Realizando o parse da resposta da api
    Map<String,dynamic>dados=json.decode(response.body);

    // setState para atualizar as informações
    print("Codigo de retorno da API ${response.statusCode.toString()}");
    print(response.body);
    setState(() {
      logradouro=dados['address'];
      bairro=dados['district'];
      cidade=dados['city'];
      ddd=dados['ddd'];
      estado=dados['state'];
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP aula 13"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Digite o cep"
            ),
            controller: ncep,
          ),
          SizedBox(
            child: 
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: _consultaCep, 
                child: Text("Consultar")),
            ),
            width: double.infinity,
          ),
          Text("Endereço:",style: TextStyle(fontSize: 18),),
          Text("Logradouro: ${logradouro}",style: TextStyle(fontSize: 18),),
          Text("Bairro: ${bairro}",style: TextStyle(fontSize: 18),),
          Text("Cidade: ${cidade}",style: TextStyle(fontSize: 18),),
          Text("DDD: ${ddd}",style: TextStyle(fontSize: 18),),
        ],
      ),
    );
  }
}