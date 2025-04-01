import 'package:flutter/material.dart';

class Tela02 extends StatelessWidget {
  const Tela02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Tela 02"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(width: 200,height: 200,
            color: Colors.blue,
            
            child: Text("Senai - Mobile",
            style: TextStyle(fontSize: 18),),)
          ],
        ),
      ),
    );
  }
}