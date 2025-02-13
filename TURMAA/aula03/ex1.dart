/* 
Exemplo estrutura condicional
13.02.2025
*/

// importa a biblioteca dart io que vai permitir que os usuarios
// digite os dados

import 'dart:io';
void main(){
  int idade;
  print("Digite sua idade: ");
  // int.parse converte a idade de string para int
  idade = int.parse(stdin.readLineSync()!);
 if(idade>=18){
  print(" Idade: $idade - Maior de idade");
 }
 else{
  print(" Idade: $idade - Menor de idade");
 }
}