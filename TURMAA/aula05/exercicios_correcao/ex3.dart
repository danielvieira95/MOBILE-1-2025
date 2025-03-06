/* Correçao ex3
06.03.2025
*/

// Cria a classe maquina

class Maquina{
  int qtde_eixos;
  int rotacao;
  double consumo_KW;
  String nome_maq;
  Maquina(this.nome_maq,this.qtde_eixos, this.rotacao, this.consumo_KW);
}

class Furadeira extends Maquina{

  Furadeira(String nome, int rot, double consumo):super(nome,1,rot,consumo);

  void ligar(){
    print("Furadeira ligada");
  }

  void ajusta_velocidade(int rpm){
    print("Velocidade ajustada: ${rpm}");

  }

  void desliga(){
    print("Furadeira  desligada");
  }
}


class Torno extends Maquina{
  Torno(String nome, int eixos, int rotacao, double consumo):super(nome, eixos,rotacao,consumo);

  void ligar(){
    print("Torno ${nome_maq} ligado");
  }

  void desligar(){
    print("Torno ${nome_maq} desligado");
  }

  void ajusta_velocidade(int rpm){
    print("Velocidade Rpm: ${rpm}");

  }
}
void main(){
  Furadeira Bosch = Furadeira("Furadeira Bosch", 3000, 1.2);
  Bosch.ligar();
  Bosch.ajusta_velocidade(1500);

  Torno Rome = Torno("Rome", 3, 5000, 3);

  Rome.ligar();
  Rome.ajusta_velocidade(2750);
}