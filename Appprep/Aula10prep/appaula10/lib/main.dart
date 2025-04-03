import 'package:appaula10/telasensores.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashboardScreen(),
  ));
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
            ListTile(title: Text('Opção 1')),
            ListTile(title: Text('Opção 2')),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Row(
          children: [
           Image.asset('images/senai.png', height: 40), // Substitua pela sua logo
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Text("App Agro IoT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white ),),
           ),
           
            const Spacer(),
            CircleAvatar(
              backgroundColor: Colors.brown[100],
              child: const Icon(Icons.person, color: Colors.brown),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Campo de busca
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Botões em cards
            _DashboardButton(
              icon: Icons.analytics_outlined,
              label: 'Coleta de Dados',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ColetaDeDadosScreen()));
              },
            ),
            const SizedBox(height: 10),
            _DashboardButton(
              icon: Icons.settings_remote_outlined,
              label: 'Sistema de Controle',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            _DashboardButton(
              icon: Icons.smart_toy_outlined,
              label: 'Assistente Minds',
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.brown[900],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}

class _DashboardButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _DashboardButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          child: Row(
            children: [
              Icon(icon, color: Colors.brown, size: 40),
              const SizedBox(width: 16),
              Text(
                label,
                style: const TextStyle(fontSize: 18, color: Colors.brown),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
