import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cadastroproduto extends StatefulWidget {
  const Cadastroproduto({super.key});

  @override
  State<Cadastroproduto> createState() => _CadastroprodutoState();
}

class _CadastroprodutoState extends State<Cadastroproduto> {
  TextEditingController nomeprod = TextEditingController();
  TextEditingController valorprod = TextEditingController();
  TextEditingController qtde = TextEditingController();

  // função para cadastrar produto
  _cadastrarproduto()async{
    String url = "http://10.109.83.10:3000/produtos";
    Map<String,dynamic> prod={
      "id":nomeprod.text,
      "nome":nomeprod.text,
      "valor":valorprod.text,
      "qtde":qtde.text
    };

    await http.post(Uri.parse(url),
    headers: <String,String>{
      'Content-type':'application/json; charset=UTF-8',
    },
    body: jsonEncode(prod)
    );
    nomeprod.text="";
    valorprod.text="";
    qtde.text="";
  }
  // função para deletar um produto
  _deleteprod(){
    http.delete(Uri.parse("http://10.109.83.10:3000/produtos/${nomeprod.text}"));
    nomeprod.text="";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Mercado"),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              

            ),
            hintText: "Digite o nome do produto"
            
             ),
             controller: nomeprod,
          ),

          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              

            ),
            hintText: "Digite o valor do produto"
            
             ),
             controller: valorprod,
          ),
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              

            ),
            hintText: "Digite a quantidade do produto"
            
             ),
             controller: qtde,
          ),
          ElevatedButton(onPressed: _cadastrarproduto, child: Text("Cadastrar")),
          ElevatedButton(onPressed: _deleteprod, child: Text("Deletar")),
          ElevatedButton(onPressed: (){

          }, child: Text("Prod Screen"))


        ],
      ),
    );
  }
}