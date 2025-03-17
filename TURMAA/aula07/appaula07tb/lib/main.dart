// biblioteca material que vai permitir a criaçao dos widgets para o Flutter no android
import 'package:flutter/material.dart';

// void main funçao principal do app
void main() {
  // runApp funçao que constroi o app chamando a classe do tipo Stateless
  runApp(Telapp());
}

class Telapp extends StatelessWidget {
  const Telapp({super.key});

// override polimorfismo, permite tratar objetos de diferentes formas
  @override
  Widget build(BuildContext context) {
    // MaterialApp faz parte do design do aplicativo
    return MaterialApp(
      home: Column(
        // alinhamento primario
       // mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.end,
       //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       //mainAxisAlignment: MainAxisAlignment.spaceAround,
       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Container(width: 300, height: 100,color: Colors.blue,),
        Container(width: 300,height: 100,color: Colors.red,child: 
        Text("Senai - Mobile",style: TextStyle(fontSize: 30,
        color: Colors.white,
        decoration: TextDecoration.none),
        ),),

        Stack(
          // propriedade de alinhamento
          alignment: Alignment.center ,
        children: [
          Container(width: 300,height: 100,color: Colors.blue,),
          Container(width: 200,height: 80,color: Colors.red,
          child: Text("Daniel",textAlign: TextAlign.center,          
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 25,

            
            ),),),
        ],
        ),
        //Text permite inserir texto no aplicativo
        
        ],
      ),
    );
  }
}

