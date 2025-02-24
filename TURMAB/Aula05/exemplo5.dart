/* Conceito de herança
24.02.2024
*/
// Classe mae
class Animal{
  String? nome;
  int? idade;
  void dormir(){
    print("O animal ${nome} esta dormindo");
  }
}

//Classe filha

class Cachorro extends Animal{
  void latir(){
    print("O animal ${nome} esta latindo");
  }
}

class Tigre extends Animal{
  String? cor;
  void atacar(){
    print("O animal Tigre $nome atacou");
  }
}
void main(){
  // Cria objeto Rocky a partir da classe cachorro
  Cachorro Rocky = Cachorro();
  Rocky.nome="Rocky";
  Rocky.idade =2;
  Rocky.latir();
  Rocky.dormir();
 
  Tigre Memphis = Tigre();
  Memphis.cor="Branco";
  Memphis.nome = "Memphis";
  Memphis.idade = 30;
  Memphis.atacar();
}