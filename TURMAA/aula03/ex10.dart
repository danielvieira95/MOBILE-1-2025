/*
Exemplo de funçao com parametro nomeado
13.02.2025
*/

// funçao com parametro  obrigatorio
// parametro nomeado é preciso colocar criarUsuario(variavel:valor)
void criarUsuario({required String nome, int? idade}){
  print("Usuario: $nome, Idade $idade");

}

void main(){
  criarUsuario(nome: "Daniel",idade: 29);
}