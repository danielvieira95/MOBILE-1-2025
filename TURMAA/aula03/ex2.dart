/*Digitar dois numeros e calcular sua media
Se a media for maior ou igual a 5 aprovado,
se nao reprovado
13.02.2025
*/

import 'dart:io';
void main(){
  double n1,n2, res;
  print("Digite o primeiro numero");
  // converte de string para double
  n1 =double.parse(stdin.readLineSync()!);
  print("Digite o segundo numero");
  n2 = double.parse(stdin.readLineSync()!);
  // calcula a media
  res = (n1+n2)/2;
  print("Media: $res");
  if(res>=5){
    print("Aprovado");
  }
  else{
    print("Reprovado");
  }
}