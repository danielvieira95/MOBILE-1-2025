/*
Exemplo 2 - Classe e objeto
27.02.2025
*/

class Carro{
  String marca ="Nissan" ;
  int ano = 2025;

  // cria metodo abrir 

  void abrirporta(int qtde_p){
    if(qtde_p==1){
      print("Porta do motorista aberta");
    }
    else if(qtde_p==2){
      print("Porta do motorista e do passageiro aberta");
    }
    else if(qtde_p==3){
      print("Porta do motorista, do passageiro aberta e traseira direita aberta");
    }
    else{
      print("Todas as portas do carro aberta");
    }

  }

  void fecharporta(int qtde_p){
    if(qtde_p==1){
      print("Porta do motorista fechada");
    }
    else if(qtde_p==2){
      print("Porta do motorista e do passageiro fechada");
    }
    else if(qtde_p==3){
      print("Porta do motorista, do passageiro fechada e traseira direita fechada");
    }
    else{
      print("Todas as portas do carro fechada");
    }

  }
  void ligar(){
    print("Carro ligado");
  }

  void desligar(){
    print("Carro desligado");
  }
}
void main(){
  // Cria o objeto
  Carro Tiida = Carro();
  Tiida.ano = 2022;
  Tiida.marca = "Nissa Tiida";
  Tiida.ligar();
  Tiida.abrirporta(2);
  print("Exibe infos do carro");
  print("${Tiida.marca}");
  print("${Tiida.ano}");
}