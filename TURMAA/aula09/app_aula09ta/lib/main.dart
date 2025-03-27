import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
 home: Telaprincipal(),
  ));
}

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App aula 09 - Campo texto"),
      ),
      body: Campotexto(),
    );
  }
}


//classe do tipo stateful

class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {
  // armazena o que digitarmos no campo nome do textfield
  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();
  String _nome ="";
  int? _idade =0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // cria o widget textfield
        TextField(
          //keyboardType: TextInputType.name,
          
           keyboardType: TextInputType.number,
          
          decoration: InputDecoration(labelText: "Digite seu nome"),
          /*onChanged: (String texto) {
            print("Texto digitado pelo usuario ${texto}");
          },*/
          // o texto só aparece no terminal apos concluir a digitação
          /*onSubmitted: (String text) {
            print("Texto digitado: ${text}");
            
          },*/
          controller: nome,

        ),
        TextField(
        keyboardType: TextInputType.number,
         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
         maxLength: 3, // limita o numero de caracteres
        decoration: InputDecoration(
          hintText: "Digite sua idade",

        ),
        controller: idade,

        ),
        ElevatedButton(onPressed: (){
          // nome.text - acessa o conteudo digitado no textfield
          print("Texto digitado ${nome.text}");
          print("Texto digitado ${idade.text}");
          setState(() {
            _nome = nome.text;
            _idade = int.tryParse(idade.text);
          });

        }, child: Text("Exibir")),
        Container(
          width: 200,height: 200,color: Colors.blue,
          child: Text("${nome.text} - idade: ${idade.text}",
          style: TextStyle(fontSize: 20),),
        )

      ],
    );
  }
}