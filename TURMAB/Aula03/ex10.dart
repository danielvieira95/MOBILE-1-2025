/*
Funçao com parametro nomeado obrigatorio
10/02/2025
*/
// funçao com parametro obrigatorio 
 void criarUsuario({required String nome, int? idade  }){
  print("Usuario: $nome , Idade: $idade");
 }

void main(){
  criarUsuario(nome: "Daniel",idade: 29 );
  
}