/*
Funçao com parametro nomeado obrigatorio e parametro nao nomeado
10/02/2025
*/
// funçao com parametro obrigatorio 
 void criarUsuario(int? idade,{required String nome} ){
  print("Nome: $nome Idade: $idade ");
 }

void main(){
  criarUsuario(29,nome: "Daniel" );
  
}