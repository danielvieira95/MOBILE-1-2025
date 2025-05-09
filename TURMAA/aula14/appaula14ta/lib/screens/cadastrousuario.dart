import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // biblioteca para decodificar o json

class Cadastrousuario extends StatefulWidget {
  const Cadastrousuario({super.key});

  @override
  State<Cadastrousuario> createState() => _CadastrousuarioState();
}

class _CadastrousuarioState extends State<Cadastrousuario> {
  // Criando variaveis para usuario e senha
  TextEditingController user_n = TextEditingController();
  TextEditingController senha_n = TextEditingController();
  // variavel para exibir a senha
  bool exibir = false;
  // função para realize o login
  _cadastrausuario()async{
    // Flag para quando encontrar o login
    bool encuser = false;
    // url com a api dos usuarios
    String url = "http://10.109.83.10:3000/usuarios";
    // Criando a variavel para armazenar a resposta da api
    http.Response resposta = await http.get(Uri.parse(url));
    
     // Cria dado para fazer o post cadastrando o usuario
     Map<String,dynamic> mensagem={
      "id":user_n.text,
      "login":user_n.text,
      "senha":senha_n.text
     } ;

     // criando a requisição post para cadastrar o usuario
     http.post(Uri.parse(url),
     headers: <String,String>{
      'Content-type':'application/json; charset=UTF-8'
     },
     body: jsonEncode(mensagem)
     );
     print("Usuario cadastrado");
     user_n.text ="";
     senha_n.text="";
     showDialog(
        context: context, 
        builder: (BuildContext){
          return AlertDialog(
            content: Text("Usuário cadastrado com sucesso"),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Fechar"))
            ],
          );

        });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar usuario"),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 300,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // Tipo do teclado
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      icon: Icon(Icons.people_alt_outlined,color: Colors.red,),
                      hintText: "Digite seu login"
                    ),
                    controller: user_n,
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                    // Tipo do teclado
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      icon: Icon(Icons.key_off_outlined,color: Colors.red,),
                      // parametro para exibir ou ocultar a senha
                      suffixIcon: IconButton(icon: Icon(exibir? Icons.visibility_off:Icons.visibility),onPressed: (){
                        setState(() {
                          exibir=!exibir;
                        });
                      } ),
                      hintText: "Digite sua senha"
                    ),
                    obscureText: exibir,
                    obscuringCharacter: '*',
                    controller: senha_n,
                                   ),
                 ),
                ElevatedButton(onPressed: _cadastrausuario, child: Text("Cadastrar")),
                

              ],
            ),)
          ],
        ),
      ),
    );
  }
}

// Cria classe chamada usuarios

class Users{
  String id;
  String login;
  String senha;
  // Cria o construtor
  Users(this.id, this.login,this.senha);
  // metodo para acessar os usuarios
  factory Users.fromJson(Map<String,dynamic>json){
    return Users(json["id"], json["login"], json["senha"]);

  }
}

/*
Users {
json["id"]:id,
json["login"]:login,
json["senha"]:senha}
*/