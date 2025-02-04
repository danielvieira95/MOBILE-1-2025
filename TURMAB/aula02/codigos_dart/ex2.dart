// importa a biblioteca dart:io
import 'dart:io'; // permite ao usuario entrar com dados

// funçao principal do codigo
void main(){
  print("Digite seu nome"); // Exibe a mensagem solicitando que o usuario
  // digite seu nome
  // null safety 
  // só irá converter o dado se a entrada nao for vazia
  String nome =stdin.readLineSync()!;
  print("Digite sua idade");
  String idade = stdin.readLineSync()!;

  print("Nome: $nome  idade: $idade");


}