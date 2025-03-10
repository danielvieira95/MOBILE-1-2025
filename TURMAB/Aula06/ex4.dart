/*
Exemplo classe abstrata
10.03.2025
*/

//  cria a classe abstrata

abstract class Alimentar{
 void separarIngredientes();
  void pegarTigela();
  void prepararComida();
  
}

class Filha implements Alimentar{
  // polimorfismo
  @override
  void separarIngredientes(){
    print("Ingredientes separados");
  }

  @override
  void pegarTigela(){
    print("Tigela pega");
  }

  @override
  void prepararComida(){
    print("Comida preparada");

  }
}

void main(){
  Filha Jacare = Filha();
  Jacare.separarIngredientes();
  Jacare.pegarTigela();
  Jacare.prepararComida();
}