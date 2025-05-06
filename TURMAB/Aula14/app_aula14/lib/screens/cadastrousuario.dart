import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // pacote utilizado para converter json

class Cadastrousuario extends StatefulWidget {
  const Cadastrousuario({super.key});

  @override
  State<Cadastrousuario> createState() => _CadastrousuarioState();
}

class _CadastrousuarioState extends State<Cadastrousuario> {
  // variaveis para realizar o login
  TextEditingController user_n = TextEditingController();
  TextEditingController senha_n = TextEditingController();
  // variavel para exibir ou ocultar a senha
  bool exibir = false;
  // função para realizar o login
  _cadastrausuario()async{
    // Cria variavel flag para quando encontrar o login
    bool encuser = false;
    // url com o endpoint dos usuarios da api
    String url = "http://10.109.83.10:3000/usuarios";

    // Cria o dado para fazer o post na api para cadastrar o usuario
    Map<String,dynamic> mensagem={
      "id":user_n.text,
      "login":user_n.text,
      "senha":senha_n.text
    };
    // Variavel para armazenar a resposta da api
    http.Response resposta = await http.get(Uri.parse(url));
    // metodo http.post
    http.post(Uri.parse(url),
    headers: <String,String>{
      'Content-type':'application/json; charset=UTF-8',
    },body: jsonEncode(mensagem));
   
   print("Usuario cadastrado");
   user_n.text="";
   senha_n.text="";

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar usuario"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(
            height: 300,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      icon: Icon(Icons.people_alt_outlined,color: Colors.red,),
                      hintText: "Digite seu nome"
                    ),
                    controller: user_n,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    icon: Icon(Icons.key_outlined,),
                    iconColor: Colors.red,
                    suffixIcon: IconButton(icon: Icon(exibir? Icons.visibility_off:Icons.visibility),onPressed: (){
                      setState(() {
                        exibir= !exibir;
                      });
                    
                    }), 
                    hintText: "Digite sua senha",
                    
                  ),
                  obscureText: exibir,
                  obscuringCharacter: '*',
                  controller: senha_n,
                  
                ),
                ElevatedButton(onPressed: _cadastrausuario, child: Text("Cadastrar")),
                
              ],
            ),
           )
          ],
        ),
      ),
    );
  }
}

