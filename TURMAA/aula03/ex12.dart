/*
Funçao assincrona
utilizada para respostas que nao sao instantaneas
13.02.2025
*/

Future<void> carregarDados()async{
print("Carregando ");

// Futuredelayed atraso para simular a resposta de uma api
await Future.delayed(Duration(seconds: 2));
print("Dados carregados");
}

void main()async{
await carregarDados();
}