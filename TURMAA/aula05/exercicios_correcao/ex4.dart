/*
Exercicio 4 classe e construtor

*/

// cria a classe produtos
class Produtos{
String nome;
int qtde;
double preco;
String tipo_comunic;
double consumo_KW;

//Cria o construtor da classe produtos
Produtos(this.nome,this.qtde,this.preco,this.tipo_comunic, this.consumo_KW);

}

class Fritadeira extends Produtos{
  // construtor herdando parametros da classe pai
  Fritadeira(nome,qtde,preco,tipo_comunic,consumo):super(nome,qtde,preco,tipo_comunic,consumo);

void ligar(){
  print("Fritadeira ${nome} ligada");
}
void desligar(){
  print("Fritadeira ${nome } desligada");
}

void ajusta_temp(int temp){
   int setpoint = 250;
  if(temp >= setpoint){
    print("Temperatura ok");
  }
  else{

    while(temp<250){
      temp = temp+10;
      print("Temperatura ajuste ${temp}");
    }
    print("Temperatura ajustada em 250 oC");
  }
  
    }
  }

class Arcondicionado extends Produtos{
  Arcondicionado(nome,qtde,preco,tipo_comunic,consumo):super(nome,qtde,preco,tipo_comunic,consumo);

  void ligar(){
    print("Arcondicionado ligado");
  }

  void desligar(){
    print("Ar condicionado desligado");
  }
 void ajusta_temp(int temp){
  int setpoint = 22;
  if(temp== setpoint){
    print("Temperatura ok");
  }
  else{
    while(temp<setpoint){
      temp = temp+2;
      print("Ajuste de temperatura $temp");
    }
    print("Temperatura ok");
  }

 }
}


void main(){

  Fritadeira Philips = Fritadeira("Philips", 1, 800.0, "Wifi", 1.4);
  Philips.ligar();
  Philips.ajusta_temp(110);
  Philips.desligar();
  Arcondicionado LG = Arcondicionado("LG", 2, 5000.0, "Bluetooth", 5.0);
  LG.ligar();
  LG.ajusta_temp(10);
}