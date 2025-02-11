/*
Exemplo funçao 
10.02.2025
*/
import 'dart:io';
// Void main função principal do codigo
void main(){
  print("Digite seu nome");
  String nome =stdin.readLineSync()!;
  saudar(nome);

}
// funçao do tipo void 
void saudar(String nome){
  print("Ola $nome ! Bem vindo");

}