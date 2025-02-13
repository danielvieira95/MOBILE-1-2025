/*
Exemplo 3 - switch case
13.02.2025
*/

import 'dart:io'; // biblioteca para permitir que o usuario digite o valor
void main(){
  double n1,n2,res; // variaveis para armazenar os numeros
  var op,ch ; // variavel que armazena a operaçao escolhida pelo usuario

  print("Operacoes");
  print("+ soma");
  print("- subtracao");
  print("* multiplicacao");
  print("/ divisao");
  do{

  print("Digite o numero n1");
  n1= double.parse(stdin.readLineSync()!);
  print("Digite o numero n2");
  n2= double.parse(stdin.readLineSync()!);
  print("Escolha a operacao");
  op= stdin.readLineSync();
  switch(op){
    case '+':
    res = n1+n2;
    print("Resultado: $res");
    break;
    case '-':
    res = n1-n2;
    print("Resultado: $res");
    break;
    case '*':
    res= n1*n2;
    print("Resultado $res");
    break;
    case'/':
    if(n2!=0){
      res = n1/n2;
      print("Resultado: $res");
    }
    else{
      print("Divisao por zero tende ao infinito \n digite um valor para n2");
     print("Digite o numero n2");
     n2= double.parse(stdin.readLineSync()!);
    if(n2!=0){
     res = n1/n2;
     print("Resultado: $res");
    }

     
    
    }
     break;

    default: print("Operacao invalida");
      }
  print("Deseja continuar ?");
  ch = stdin.readLineSync();
}while(ch!='n');
}