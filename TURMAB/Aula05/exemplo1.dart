/*
Exemplo 1 - Programaçao orientada a objeto
24.02.2025
*/


// Cria classe chamada Casa
class Casa{
  //String cor = "Branco"; // inicializa a variavel com o valor padrao branco
  String? cor; // ? faz parte do null safety do dart
  int? qtde_p;

  // Cria o metodo chamado abrirporta()
  void abrirporta(){
    print("A porta esta aberta");
  }
}

void main(){
  // instancia o objeto chamado minhaCasa
  Casa  minhaCasa = Casa();
 // minhaCasa.cor="Azul";
  minhaCasa.qtde_p=2;
  minhaCasa.abrirporta();
  print("Cor da casa ${minhaCasa.cor}");
  print("Quantidade de portas: ${minhaCasa.qtde_p}");
}