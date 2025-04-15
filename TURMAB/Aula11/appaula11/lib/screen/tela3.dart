import 'package:flutter/material.dart';

class RadioButtomExample extends StatefulWidget {
  const RadioButtomExample({super.key});

  @override
  State<RadioButtomExample> createState() => _RadioButtomExampleState();
}

class _RadioButtomExampleState extends State<RadioButtomExample> {
  // Cria uma variavel selectOption
  int? selectOption;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
            // Cria o RadioButtom
      RadioListTile<int>(
        value: 1, 
        groupValue: selectOption, 
        onChanged: (value){
        setState(() {
          selectOption =value;
        });
        }),
        
        RadioListTile<int>(
          value: 2, 
          groupValue: selectOption, 
          onChanged: (value){
            setState(() {
              selectOption = value;
            });
          
          }),
           RadioListTile<int>(
          value: 3, 
          groupValue: selectOption, 
          onChanged: (value){
            setState(() {
              selectOption = value;
            });
          
          }),

          Text('Radio buttom opçao $selectOption',
          style: TextStyle(fontSize: 18),)

    ],
    );
  }
}