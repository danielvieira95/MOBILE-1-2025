/*Funçao assincrona
10/02/2025
*/
// void tipo de retorno
Future<void> carregarDados()async{
  print("Carregando");
  // Future.delayed atraso da resposta simulando uma api
  await Future.delayed(Duration(seconds: 2));
  print("Dados carregados");

}

void main()async{
await carregarDados();
}