void exibirMensagem(String mensagem,[String remetente ="Anonimo"])
{
  print("Mensagem de $remetente: $mensagem");

}
void main(){
  exibirMensagem("Bem vindo ao curso");
  exibirMensagem("Parabens pelo progresso !","Daniel");
}