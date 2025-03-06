/*
Exemplo polimorfismo
06.03.2025
*/

class Forma{
  void desenhar(){
    print("Desenho generico");
  }
}

class Circulo extends Forma{
  @override
  void desenhar() {
   print("Desenhando um circulo");
  }
  
  void desenharForma(Forma forma){
    forma.desenhar();
  }
  }
void main(){
  Circulo figura = Circulo();
  figura.desenharForma(Circulo());
}