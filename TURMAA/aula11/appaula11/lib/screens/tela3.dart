import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  // cria uma variavel chama selectoption
  int ? selectoption;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      RadioListTile<int>(
        title: Text("Opção 1"),
        value: 1, 
        groupValue: selectoption, 
        onChanged: (value){
          setState(() {
            selectoption = value;
          });
         
        }),
        RadioListTile(
          title: Text("Opção 2"),
          value: 2, 
          groupValue: selectoption, 
          onChanged: (value){
            setState(() {
            selectoption = value;
          });
          
          }),
           RadioListTile(
          title: Text("Opção 3"),
          value: 3, 
          groupValue: selectoption, 
          onChanged: (value){
            setState(() {
              selectoption = value;
            });
          
          }),
          Text("Radio button opção $selectoption",
          style:TextStyle(fontSize: 18) ,)
      ],
    );
  }
}