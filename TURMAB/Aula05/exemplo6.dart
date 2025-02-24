/*
Construtor 
24.02.2025
*/

/* Conceito de herança
24.02.2024
*/
// Classe mae
class Animal{
  String nome;
  int idade;

  // construtor 
  Animal(this.nome,this.idade);
  void dormir(){
    print("O animal ${nome} esta dormindo");
  }
}

//Classe filha

class Cachorro extends Animal{
  Cachorro(nome,idade):super(nome,idade);
  void latir(){
    print("O animal ${nome} esta latindo");
  }
}

class Tigre extends Animal{
  Tigre(nome,idade,this.cor):super(nome,idade);
  String? cor;
  void atacar(){
    print("O animal Tigre $nome atacou");
  }
}
void main(){
  // Cria objeto Rocky a partir da classe cachorro
  Cachorro Rocky = Cachorro("Rocky",2);
  Rocky.nome="Rocky";
  Rocky.idade =2;
  Rocky.latir();
  Rocky.dormir();
 
  Tigre Memphis = Tigre("Memphis",30,"Branco");
 // Memphis.cor="Branco";
 // Memphis.nome = "Memphis";
  //Memphis.idade = 30;
  Memphis.atacar();
}