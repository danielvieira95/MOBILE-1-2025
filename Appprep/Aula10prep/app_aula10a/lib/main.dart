import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Jogador {
  final String nome;
  final int idade;
  final int pontuacao;

  Jogador({required this.nome, required this.idade, required this.pontuacao});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jogadores',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const JogadoresPage(),
    );
  }
}
class JogadoresPage extends StatefulWidget {
  const JogadoresPage({super.key});

  @override
  State<JogadoresPage> createState() => _JogadoresPageState();
}
class _JogadoresPageState extends State<JogadoresPage> {
   List<Jogador> jogadores = [];

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController idadeController = TextEditingController();
  final TextEditingController pontuacaoController = TextEditingController();
  _limpar(){
  setState(() {
    jogadores=[];
    
  });
  }

  void adicionarJogador() {
    final nome = nomeController.text;
    final idade = int.tryParse(idadeController.text);
    final pontuacao = int.tryParse(pontuacaoController.text);

    if (nome.isNotEmpty && idade != null && pontuacao != null) {
      setState(() {
        jogadores.add(Jogador(nome: nome, idade: idade, pontuacao: pontuacao));
      });

      // Limpa os campos
      nomeController.clear();
      idadeController.clear();
      pontuacaoController.clear();
    }
  }

@override
  void dispose() {
    nomeController.dispose();
    idadeController.dispose();
    pontuacaoController.dispose();
    super.dispose();
  }



 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Jogadores do Meu Esporte',style:TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration: const InputDecoration(labelText: 'Nome do jogador'),
            ),
TextField(
              controller: idadeController,
              decoration: const InputDecoration(labelText: 'Idade'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: pontuacaoController,
              decoration: const InputDecoration(labelText: 'Gols/Pontos'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: adicionarJogador,
              child: const Text('Adicionar Jogador'),
            ),
            ElevatedButton(onPressed: _limpar, child: Text("Limpar")),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: jogadores.length,
                itemBuilder: (context, index) {
                  final jogador = jogadores[index];
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(jogador.nome),
                    subtitle: Text(
                        'Idade: ${jogador.idade} | Gols/Pontos: ${jogador.pontuacao}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
