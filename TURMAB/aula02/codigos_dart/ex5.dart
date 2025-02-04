// importando biblioteca Dart:io

import 'dart:io';

void main(){
  print("Digite n1");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Digite n2: ");
  double num2 = double.parse(stdin.readLineSync()!);
  double res = num1 *num2;
  print("Res= $res");
}