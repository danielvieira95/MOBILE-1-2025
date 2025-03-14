import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp responsavel pela construçao da tela
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        // barra do aplicativo
        appBar: AppBar(title: Text("App aula 07"),
        backgroundColor: Colors.blue,),
        backgroundColor: Colors.white,
        body: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
          // alinhamento secundario 
          crossAxisAlignment: CrossAxisAlignment.start,      
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 80,height: 80,color: Colors.amber,),
                Container(width: 80,height: 80,color: Colors.orange,),
                Container(width: 80,height: 80,color: Colors.red,),
              ],

            ),
            Stack(
              
              children: [
                Container(width: 400,height: 100,color: Colors.blue,
                child: Text("Senai",
                style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),),
                Container(width: 80,height: 100,color: Colors.red,),
                 

              ],
            ),

             Stack(
              
              children: [
                Container(width: 400,height: 100,color: Colors.blue,
                child: Text("Mobile 1",
                style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),),
                Container(width: 80,height: 100,color: Colors.red,),
                 

              ],
            ),



           

          
            

          ],
        ),
      ),
    );
  }
}