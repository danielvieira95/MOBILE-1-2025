import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Produto_screen extends StatefulWidget {
  const Produto_screen({super.key});

  @override
  State<Produto_screen> createState() => _Produto_screenState();
}

class _Produto_screenState extends State<Produto_screen> {
 void initState(){
    super.initState();
    leituradados();
  }
  List  dado =[];
 Future<void> leituradados() async{

    String url = "http://10.109.83.10:3000/produtos";
    http.Response resposta = await http.get(Uri.parse(url));
   
     if(resposta.statusCode ==200){
        setState(() {
      dado = jsonDecode(resposta.body)  as List<dynamic>;// conversao dos produtos para uma lista convertendo do formato json
    print(dado);
    });
     }

     else {
      print(resposta.statusCode);
      throw Exception('Falha ao consumir api');
    }
   
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("App mercado - Produtos"),
      ),
      body: Center(
        child:       
          ListView.builder(
            itemCount: dado.length,
            
            itemBuilder:(context,index ){
            final item = dado[index];
            return ListTile(
            title: Text("Nome ${item["nome"]}",style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,),
            subtitle: Column(
              children: [
                Text("Valor ${item["valor"]}",style: TextStyle(fontSize: 18),),
                Text("Qtde ${item["qtde"]}",style: TextStyle(fontSize: 18),),
              ],
            ),
            
            );
            } ),


      ),
      );
    
  }
}










class Produto_item{
  String id;
  String nome;
  String valor;
  String qtde;
  Produto_item(this.id, this.nome, this.valor, this.qtde);
  factory Produto_item.fromJson(Map<String, dynamic> json){
    return Produto_item(json['id'],json['nome'],json['valor'],json['qtde']);
  }
}