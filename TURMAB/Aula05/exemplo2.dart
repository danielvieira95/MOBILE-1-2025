/* Exemplo 2 programaçao orientada a objeto
24.02.2025
*/

class Carro{
  String marca = "Nissan";
  int ano =2025;
 // cria um metodo para abrir a porta do carro
  void abrirporta(int nqtde){
    if(nqtde==1){
      print("Porta do motorista aberta");
    }
    else if(nqtde==2){
      print("Porta do motorista e passageiro aberta");
    }
    else if(nqtde==3){
      print("Porta do motorista, passageiro aberta e traseira esquerda");

    }
    else {
      print("As 4 portas do veiculo estao abertas");
    }

  }


  void fecharporta(int nqtde){
    if(nqtde==1){
      print("Porta do motorista fechada");
    }
   else  if(nqtde==2){
      print("Porta do motorista e passageiro fechada");
    }
  else  if(nqtde==3){
      print("Porta do motorista, passageiro e traseira esquerda fechada");

    }
  else{
      print("As 4 portas do veiculo estao fechadas");
    }
  }
    void liga(){
      print("Carro ligado");
    }

    void desliga(){
      print("Carro desligado");
    }

  }


void main(){
  // instancia o objeto Tiida
  Carro Tiida = Carro();

  Tiida.ano = 2022;
  Tiida.marca="Nissan Tiida";
  Tiida.liga();
  Tiida.fecharporta(4);
  print("Exibe infos carro");
  print(" ${Tiida.marca}");
  print("${Tiida.ano}");
  
}