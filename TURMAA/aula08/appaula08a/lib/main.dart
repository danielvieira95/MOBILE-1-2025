import 'package:flutter/material.dart';

void main() {
  runApp(
    // Design para Android
    MaterialApp(
      // retira a faixa modo debug do aplicativo
      debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
// Cria uma classe do tipo Stateless chamada Home
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold layout semipronto do aplicativo
    return Scaffold(
      
      appBar: AppBar(
        title: Text("App Aula08"),
        // backgroundColor altera a cor do aplicativo do app bar
        backgroundColor: Colors.blue,
        actions: [
          // Adiciona um icone no AppBar
          IconButton(onPressed: (){
            print("Busca acionada");

          }, icon: Icon(Icons.search)),
         IconButton(onPressed: (){
          print("Mais opçoes acionadas");
         }, icon: Icon(Icons.more_vert)),
        ],

      ),
      // corpo do Widget Scaffold

      // Exemplo de single layout
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 200,height: 200,color: Colors.blue,
            // 
            child: Text("Aplicativo Mobile",textAlign: TextAlign.center,     
                  style: TextStyle(fontSize: 20),),),
           // Text("Conteudo principal do aplicativo",style: TextStyle(fontSize: 20),),
          ],
        )

      ),
    
    );
  }
}