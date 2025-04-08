import 'package:app_aula10tb/tela2.dart';
import 'package:app_aula10tb/tela3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashboardScreen(),
  ));
}

// Cria a classe DashboardScren
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
 // polimorfismo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cria o widget Drawer
      drawer: Drawer(
        child: ListView(
          children: [
            // Widget DrawerHeader
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown),
              
              child: Text('Menu',
              style: TextStyle(color: Colors.white),)),
              ListTile(title: Text('Opção 1'),),
              ListTile(title: Text('Opção 2'),),
          ],
        ),
      ),
      // criando o Appbar

      appBar: AppBar(
        // atribuindo cor ao appbar
        backgroundColor: Colors.red,
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
        // centraliza o titulo do aplicativo
        centerTitle: true,
        // adiciona uma linha
        title: Row(
        children: [
          Image.asset('images/senai.png',height: 40,),
          Padding(padding: EdgeInsets.all(12),
          child: Text('App Agro IoT',
          style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Colors.white),),
          ),
          Spacer(),
          CircleAvatar(
            backgroundColor: Colors.brown[100],
            child: Icon(Icons.person,color: Colors.brown,),
          )
        ],
        ),
         
         
        ),
        
       // corpo do Scaffold
       body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar ...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
            ),),

            SizedBox(height: 10,),
            _DashboardButton(icon: Icons.analytics_outlined, 
            label: 'Monitoramento', onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: 
              (context)=>ColetaDadosScreen()));
            }),
            SizedBox(height: 10,),
            _DashboardButton(
              icon: Icons.settings_remote_outlined, 
              label: 'Sistema de controle', 
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>Telaacionamento()));
              }),

              SizedBox(height: 10,),
              _DashboardButton(
                icon:Icons.smart_toy_outlined ,
                 label: 'Chatbot', onTap: (){})

        ],
       ),

       // cria o BottomNavigator

       bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.red[900],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),label: ''),
        ]),


    );
  }
}


// Cria uma classe nova _DashboardButton

class _DashboardButton extends StatelessWidget {
  

  // Cria atributos para classe _DashboardButton

  final IconData icon;
  final String label;
  final VoidCallback onTap;

 // Cria o construtor da classe _DashboardButton
 const _DashboardButton({required this.icon, required this.label,
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        // adicionando forma para o card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),          
        ),
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 50,horizontal: 12),
            child: Row(
              children: [
                Icon(icon,
                color: Colors.brown,
                size: 40,),
                SizedBox(width: 16,),
                Text(label,style: TextStyle(fontSize: 18,
                color: Colors.brown),)
              ],
            ),),
            
      ),
    );
  }
}