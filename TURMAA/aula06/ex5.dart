/* 
Classe abstrata
06.03.2025

*/
// cria classe abstrata
abstract class Alimentar{
  void separarIngredientes();
  void pegarTigela();
  void prepararComida();
} 

class Filha implements Alimentar{
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