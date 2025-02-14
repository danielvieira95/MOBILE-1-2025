/* Exemplo com funçao com parametros opcionais
13/02/2025
*/

void exibirMensagem(String mensagem,[String remetente ="Anonimo"]){
print("Mensagem de $remetente: $mensagem");
}

void main(){
  exibirMensagem("Bem vindo ao curso de Mobile com Flutter");
  exibirMensagem("Bem vindo ao curso de Mobile com Flutter","Prof Daniel");
}