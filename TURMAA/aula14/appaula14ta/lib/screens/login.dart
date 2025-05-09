import 'package:appaula14ta/screens/cadastroproduto.dart';
import 'package:appaula14ta/screens/cadastrousuario.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // biblioteca para decodificar o json

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Criando variaveis para usuario e senha
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();
  // variavel para exibir a senha
  bool exibir = false;
  // função para realize o login
  _verificaLogin()async{
    // Flag para quando encontrar o login
    bool encuser = false;
    // url com a api dos usuarios
    String url = "http://10.109.83.10:3000/usuarios";
    // Criando a variavel para armazenar a resposta da api
    http.Response resposta = await http.get(Uri.parse(url));
    List clientes = <Users>[]; // cria uma lista para armazenar os usuarios cadastrados
    print(resposta.statusCode); // codigo de retorno da API

    // cria uma variavel para armazenar os dados
     var dados = json.decode(resposta.body) as List; // armazena os dados na forma de lista
     print("${dados[0]["login"]} ${dados[0]["senha"]}");

     // laço de repetição para exibir mais de um usuario cadastrado na api
     for(int i=0; i<dados.length;i++){
      print("${dados[i]["login"]}  ${dados[i]["senha"]}");
      if(user.text == dados[i]["login"] && senha.text == dados[i]["senha"]){
        encuser =true;
      }
     }
     if(encuser ==true){
      print("Usuario ${user.text} encontrado");
      encuser = false;
      // vai para outra tela
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=>Cadastroproduto()));
      user.text="";
      senha.text="";
     }
     else{
      print("Usuario não encontrado");
       user.text="";
       senha.text="";
      // Pop up de usuario não encontrado
      /*ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text("Usuario nao encontrado"),duration: Duration(seconds:2),)
      );*/

      showDialog(
        context: context, 
        builder: (BuildContext){
          return AlertDialog(
            content: Text("Usuário não encontrado"),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Fechar"))
            ],
          );

        });
     }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
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
                    controller: user,
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
                    controller: senha,
                                   ),
                 ),
                ElevatedButton(onPressed: _verificaLogin, child: Text("Entrar")),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Cadastrousuario()));

                }, child: Text("Cadastrar"))

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