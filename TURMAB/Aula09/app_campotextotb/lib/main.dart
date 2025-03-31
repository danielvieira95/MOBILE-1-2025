import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // função runApp que executa a classe com a Tela do aplicativo
  // MaterialApp permite chamar o widget da tela
  runApp(MaterialApp
  (
    debugShowCheckedModeBanner: false,
    home: Telaprincipal(),));
}

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App aula 09 - Campo texto"),
        backgroundColor: Colors.blue,
      ),
      body: Campotexto() ,
    );
  }
}

// Classe do tipo Statefull
class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {
  // declara variavel do tipo TextEdittingController
  TextEditingController email = TextEditingController();
  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();
  _limpar(){
    setState(() {
      email.text="";
      nome.text="";
      idade.text ="";
    });
  }
  @override
  Widget build(BuildContext context) {
    // widget coluna
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // children estabelece a relaçao entre os outros componentes do app
     children: [
      // Textfield permite que o usuario insira informações
      TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "Digite seu email"
        ),
       /* onChanged: (String texto){
          print("O texto digitado pelo usuario foi ${texto}");
        },*/
        controller: email,
      ),

      Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: "Digite seu nome"
          ),
          /*onSubmitted: (String texto){
            print("Texto digitado pelo usuario: ${texto}");
          },*/
          controller: nome,
        ),
      ),
      
     TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        labelText: "Digite sua idade",
        // border parametro que permite estilizar o widget textfield
        border: OutlineInputBorder(
          borderRadius:// BorderRadius.circular(8)
          BorderRadius.circular(8),
        )
      ),
      controller: idade,
    
     ),

      // cria um botao para ao ser pressionado exibir no terminal o que o usuario digita
      
      // Cria uma Row para permitir colocar um botao do lado do outro
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         ElevatedButton(
        onPressed: (){
          print("Email ${email.text}");
          print("Nome: ${nome.text}");
          setState(() {
            email.text; 
            nome.text;
            idade.text;

          });

        }, child: Text(
        "Exibir"
        ),),
      ElevatedButton(onPressed: _limpar, child: Text("Limpar")),
        ],
      ),
      Container(width: 300,height: 50,
      color: Colors.blue,child: Text("${email.text}",
      textAlign:TextAlign.center ,
      
      style: TextStyle(fontSize: 18),),
      ),
      Container(width: 300,height: 50,
      color: Colors.blue,child: Text("${nome.text} - ${idade.text}",
      textAlign: TextAlign.center,
      
      style: TextStyle(fontSize: 18),),
      ),
     ],
    );
  }
}

