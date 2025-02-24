/* 
Exemplo classe com atributos privados
24.02.2025
*/

class Pessoa{
 String? _nome ; //  _ representa atributo privado

 void setNome(String nome){
   _nome = nome;
 }

 String? getNome(){
  return _nome;
 }
}

class Aluno{
  String? nome;
   getNome(){
    return nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();
  cliente._nome="Daniel";
  print("Nome do cliente: ${ cliente.getNome()}");
  Pessoa Daniel = Pessoa();
  Daniel._nome = "Filipe";
  print("${Daniel.getNome()}");
  Aluno Pedro = Aluno();
  Pedro.nome= "Pedro";
  print("${Pedro.getNome()}");
  
}