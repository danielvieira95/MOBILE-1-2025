/* 
Exemplo polimorfismo

06.03.2025
*/

class Animal{
  void fazerSom(){
    print("O animal faz um som");
  }
}

class Cachorro extends Animal{

  // polimorfismo
  @override
  void fazerSom(){
    print("O cachorro late Au au");
  }
}

class Gato extends Animal{
  // polimorfismo

  @override
  void fazerSom() {
    print("Gato mia");
  }
}

void main(){
  Animal meuAnimal = Cachorro();
  meuAnimal.fazerSom();

  Animal meuAnimal1 = Gato();
  meuAnimal1.fazerSom();
}