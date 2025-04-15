import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  static const fontText = TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
  // cria variavel booleana
  bool ischeck =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: Column(
        children: [
          Text('Checkbox 1',style: fontText,),
          // Cria o Widget Checkbox
          Checkbox(
            value: ischeck, 
            onChanged: (bool? value){
              setState(() {
                ischeck = value!;
              });

            }),
            Text('Status do checkbox: $ischeck',style: TextStyle(fontSize: 18),)
        ],
      ),
     ),
    );
  }
}