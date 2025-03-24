import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaApp(    
    ),
  ));
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App aula 08 - Multichild layout"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.star,color: Colors.yellow,size: 50,),
              Icon(Icons.favorite,color: Colors.red,size: 50,),
              Icon(Icons.thumb_up,color: Colors.blue,size: 50,),
            ],
          ),
          // Sizebox adiciona espaçamento para separar os elementos
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                  child: Text("Stack",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  textAlign: TextAlign.center,),
                  
                )
              ],
            ),
          ),
          SizedBox(
            height: 350,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person_2_rounded),
                  title: Text("Usuario 1"),
                  subtitle: Text("Descrição do usuario 1"),
                ),
                ListTile(leading: Icon(Icons.person_2_rounded),
                title: Text("Usuario 2"),
                subtitle: Text("Descrição do usuario 2"),
                ),
                  ListTile(leading: Icon(Icons.person_2_rounded),
                title: Text("Usuario 3"),
                subtitle: Text("Descrição do usuario 3"),
                ),
                  ListTile(leading: Icon(Icons.person_2_rounded),
                title: Text("Usuario 4"),
                subtitle: Text("Descrição do usuario 4"),
                ),
                ListTile(leading: Icon(Icons.person_2_rounded),
                title: Text("Usuario 5"),
                subtitle: Text("Descrição do usuario 5"),
                ),
                  ListTile(leading: Icon(Icons.person_2_rounded),
                title: Text("Usuario 6"),
                subtitle: Text("Descrição do usuario 6"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}