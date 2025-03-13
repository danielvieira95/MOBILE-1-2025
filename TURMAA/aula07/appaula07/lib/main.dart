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
        // espaçamento primario 
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.end,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
       mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 200,height: 100,color: Colors.blue,),
            Container(width: 180,height: 80,color: Colors.red,),
          ],
        ),
        
        Text("Mobile 1 - Flutter",style: TextStyle(fontSize: 30,
        color: Colors.blue,
        decoration: TextDecoration.none),),
        Container(width: 200,height: 100,color: Colors.red,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 50,height: 50,color: Colors.amber,),
            Container(width: 50,height: 50,color: Colors.white,),
            Container(width: 50,height: 50,color:Colors.deepOrange),
          ],
        )
      ],
      ),
    );
  }
}