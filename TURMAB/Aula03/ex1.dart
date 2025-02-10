/*
Exemplo estrutura condicional if/else
10.02.2025
*/

import 'dart:io'; // permite a entrada de dados via teclado

void main(){
  int idade;
  print("Digite sua idade"); 
  idade = int.parse(stdin.readLineSync()!);

  if(idade>=18){
  print("Maior de idade");
  }
  else{
    print("Menor de idade");
  }
}