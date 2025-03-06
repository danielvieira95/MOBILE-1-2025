/*
Exemplo abstraçao
06.03.2025
*/

// Interface ou contrato

abstract class Forma{
  double calcularArea();
}

// Classe que implementa a interface
// abstracao usa o implements
class Circulo implements Forma{
  double raio;
  Circulo(this.raio);

  @override

  double calcularArea(){
    return 3.14*raio*raio;
  }
}

class Retangulo implements Forma{
  double largura, altura;
  Retangulo(this.largura,this.altura);

  @override
  double calcularArea(){
    return largura *altura;
  }
}


void main(){
  Forma forma1 = Circulo(5);
  Forma forma2 = Retangulo(4, 6);

  print("Area do circulo: ${forma1.calcularArea()}");
  print("Area do retangulo: ${forma2.calcularArea()}");
}