import 'package:flutter/material.dart';

void main() {
  runApp(TelaHome());
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
appBar: AppBar(
  title: Text("App aula 07",style: TextStyle(color: Colors.white),),
  // backgroundColor - cor de fundo do app bar
  backgroundColor: Colors.black,
),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
   
    children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 100,height: 100,color: Colors.black,),
          Container(width: 100,height: 100,color: Colors.white,),
          Container(width: 100,height: 100,color: Colors.black,),
        ],
      ),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 100,height: 100,color: Colors.black,),
          Container(width: 100,height: 100,color: Colors.white,),
          Container(width: 100,height: 100,color: Colors.black,),
        ],
      ),
      Text("Desenvolvimento Mobile",style: TextStyle(fontSize: 30),),
      Text("Senai Roberto Mange ",style: TextStyle(fontSize: 30),),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 100,height: 100,color: Colors.black,),
          Container(width: 100,height: 100,color: Colors.white,),
          Container(width: 100,height: 100,color: Colors.black,),
        ],
      ),
      ElevatedButton(onPressed: (){
        print("Desenvolvimento Mobile");

      }, child: Text("Mensagem")),
      TextButton(onPressed: (){
      print("SENAI ROBERTO MANGE ");
      }, child: Text("Mensagem"))
  
    ],
  ),
),
      ),
    );
  }
}