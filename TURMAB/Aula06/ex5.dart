/*
Correçao exercicio 4 aula 05
Criar uma classe produtos com alguns atributos conforme enunciado
10.03.2025
*/

// Cria a classe produtos
class Produtos{
  String nome;
  int qtde;
  double preco;
  String tipo_comun;
  double consumo_kw;

  // cria o construtor
  Produtos(this.nome, this.qtde,this.preco,this.tipo_comun,this.consumo_kw);

  // cria metodo para ligar o produto

  void ligar(){
    print("Produto ligado");
  }
}

// Classe chamada fritadeira

class Fritadeira extends Produtos{
  // construtor herdando parametros da classe pai

  Fritadeira(nome,qtde,preco, tipo_com,consumo_kw):super(nome,qtde, preco,tipo_com,consumo_kw);


  //polimorfismo Override
  @override
  void ligar(){
    print("Fritadeira ${nome} ligada");
  }
  void desligar(){
    print("Fritadeira ${nome} desligada");
  }

  void ajustatemp(int temp){
    int setpoint =250;
    if(temp>=250){
      print("Temperatura ajustada");
    }else{

      while(temp<250){
        temp = temp+10;
        print("Temperatura: ${temp}");
      }
      print("Temperatura ajustada: ${temp}");
    }

  }
}

class ArCondicionado extends Produtos{
  ArCondicionado(nome,qtde,preco,tipo_com,consumo):super(nome,qtde,preco,tipo_com,consumo);
  @override
  void ligar(){
    print("Ar condicionado ligado");
  }

  void desligar(){
    print("Ar condicionado desligado");
  }

  void ajustatemp(int temp){
    int setpoint =22;
    if(temp==setpoint){
      print("Temperatura ok");
    }
    else{
      while(temp<setpoint){
        temp = temp+2;
        print("Ajuste de temperatura $temp");
      }
      print("Temperatura ok");
    }   
  }}

  void main(){
    Fritadeira Philips = Fritadeira("Philips", 1, 800.0, "Wifi", 1.4);
    Philips.ligar();
    Philips.ajustatemp(100);
    ArCondicionado LG = ArCondicionado("LG", 1, 3500.0, "Bluetooth",3.5);
    LG.ligar();
    LG.ajustatemp(0);

  }
