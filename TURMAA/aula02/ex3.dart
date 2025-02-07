import 'dart:io';
void main(){
  print("Digite o numero n1 ");
  // stdin.readlineSync vem dado como string
  int n1 = int.parse(stdin.readLineSync()!);
  print("Digite o segundo numero");
  int n2 = int.parse(stdin.readLineSync()!);
  int res = n1+n2;
  print("Resultado: $res");
}