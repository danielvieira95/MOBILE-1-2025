// biblioteca flutter material permite criar os widgets para app 
// no android
import 'package:flutter/material.dart';

// voi main funçao principal do codigo
void main() {
  // runApp funçao que chama a classe do app
  runApp(Telaapp());
}
class Telaapp extends StatelessWidget {
  const Telaapp({super.key});

 // polimorfismo que permite tratar objetos de diferentes formas
  @override
  // Widget build metodo que ira construir nossa tela
  Widget build(BuildContext context) {
    // MaterialApp vai permitir construir a tela do app
    return MaterialApp(
      home: Column(
      children: [
        Container(width: 200,height: 200,color: Colors.blue,),
      ],
      ),
    );
  }
}