/*
Exemplo classe e objeto com atributo privado
27.02.2025
*/

class Pessoa{
  String? _nome; // _ representa elemento privado

  // Cria metodo setnome

  void setNome(String nome){
   _nome = nome;
  }

  String? getNome(){
     return _nome;
  }
}

class Aluno{
  String? nome ;
  getNome(){
    return nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();
  cliente._nome = "Daniel";
  print("Nome do cliente: ${cliente._nome}");
  print("Nome do cliente ${cliente.getNome()} ");
 Aluno Bruno = Aluno();
  Bruno.nome="Bruno";
  print("${Bruno.nome}");
}