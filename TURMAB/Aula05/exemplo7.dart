/* Exemplo construtor
24.02.2025
*/

class Fruta{
  String sabor;
  String nome;
  String cor;
  double peso;
  int diasDesdecolheita;
  bool isMadura = false;
  // Cria construtor

  Fruta(this.sabor,this.nome,this.cor,this.peso,this.diasDesdecolheita);

// metodo para verificar se a fruta esta madura
void verificarMaturidade(int diasParaMaturidade){
  if(diasDesdecolheita>= diasParaMaturidade){
    print("A $nome esta madura");
    isMadura = true;
  }
  else{
    print("A $nome nao esta madura");
    isMadura=false;
  }
}
}

void main(){
  Fruta manga = Fruta("Doce", "Manga", "Amarela", 1.2, 5);
  manga.verificarMaturidade(6);
}