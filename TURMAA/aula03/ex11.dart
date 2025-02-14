/*
Exemplo de funçao com parametro nomeado
13.02.2025
*/
// required parametro obrigatorio
// funçao com parametro  obrigatorio
// parametro nomeado é preciso colocar criarUsuario(variavel:valor)
void criarUsuario(int? idade,{required String nome }){
  print(" Idade $idade,Usuario: $nome");

}

void main(){
  criarUsuario(29,nome: "Daniel",);
}