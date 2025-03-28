import 'package:flutter/material.dart';

class Tela02 extends StatelessWidget {
  const Tela02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App aula 09 - Tela 02"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Text("Tela 02"),
            )
          ],
        ),
      ),
    );
  }
}