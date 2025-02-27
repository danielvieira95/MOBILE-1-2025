/*
Exemplo classe e objeto 
Herança e Construtor
27.02.2025
*/
// Classe mae
class Animal{

String? nome;
int? idade;
// Construtor
Animal(this.nome, this.idade);
void dormir(){
  print("O animal esta dormindo");
}
}

// classe filha
class Cachorro extends Animal{
  // Super construtor para passar o parametro da classe mae para
  // a classe filha
  Cachorro(nome,idade):super(nome,idade);
  void latir(){
    print("O animal ${nome} esta latindo");
  }
}

class Tigre extends Animal{
  // utiliza o this para a cor, pois é um parametro so da classe Tigre
 Tigre(nome,idade,this.cor):super(nome,idade);
  String? cor;

  void atacar(){
    print("O animal Tigre $nome atacou");
  }

}

void main(){
  Cachorro Rocky = Cachorro("Rocky",2);
  Rocky.nome = "Rocky";
  Rocky.idade =2;
  Rocky.latir();
  Rocky.dormir();
  Tigre Memphis = Tigre("Memphis",30,"Branco");
  Memphis.nome ="Memphis";
  Memphis.idade = 30;
  Memphis.atacar();

}