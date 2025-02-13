/*
Exemplo funçao
13.02.2025
*/
import 'dart:io';
// void main funçao principal do codigo
void main(){
  print("Digite seu nome ");
  String nome = stdin.readLineSync()!;
  saudar(nome);
}

// funçao do tipo string
void saudar(String nome){
  print("Ola $nome ! Bem vindo !");

}