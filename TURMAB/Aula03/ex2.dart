/*
Receber dois numeros decimaisdigitados pelo 
usuario
e calcular a media deles
10/02/2025
*/
import 'dart:io';
void main(){
  double n1,n2, res;
  print("Digite o primeiro numero ");
  // recebe o numero digitado pelo usuario e 
  // converte de string para double
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite o numero n2");
  n2 = double.parse(stdin.readLineSync()!);

  res = (n1+n2)/2;
  print("Media: $res");
  if(res>=5){
    print("Aprovado - media $res");
  }
  else{
    print("Reprovado - media: $res");
  }
}