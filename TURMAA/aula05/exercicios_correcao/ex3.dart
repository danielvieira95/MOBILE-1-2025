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