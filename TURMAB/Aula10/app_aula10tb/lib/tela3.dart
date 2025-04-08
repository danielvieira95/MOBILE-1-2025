import 'package:flutter/material.dart';

class Telaacionamento extends StatefulWidget {
  const Telaacionamento({super.key});

  @override
  State<Telaacionamento> createState() => _TelaacionamentoState();
}

class _TelaacionamentoState extends State<Telaacionamento> {
 // cria uma variavel para definir o status de acionamento

 final bool status = false;
 Color status_cor = Colors.red;
 // Funçao para ligar a bomba

 _ligarBomba(){
  setState(() {
    status_cor = Colors.green;
  });
 }

 _desligarBomba(){
  setState(() {
    status_cor = Colors.red;
  });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAF5EE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context), 
          icon: Icon(Icons.arrow_back,
          color: Colors.brown,)),
          title: Text('Acionamento',
          style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold
          
          ),),
          centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              
              child: Container(
                alignment: Alignment.center,
                width: 200,height: 200,
                color: status_cor,
                child: Text('Bomba de irrigação',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
                
                ),
              ),),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white
                  ),
                  onPressed: _ligarBomba, child: Text('Ligar bomba')),),
                 SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white
                  ),
                  onPressed: _desligarBomba, child: Text('Desligar bomba')),), 
          ],
        ),
      ),
    );
  }
}