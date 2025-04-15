import 'package:appaula11/screen/ChatScreen.dart';
import 'package:appaula11/screen/tela1.dart';
import 'package:appaula11/screen/tela2.dart';
import 'package:appaula11/screen/tela3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(NavBottom());
}

class NavBottom extends StatelessWidget {
  const NavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavScreen(),
    );
  }
}

// Cria classe do tipo Statefull

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {

  // Cria variavel para que quando cada icone do Bottom Navigator for
  // clicado ira mudar a tela

  int selectindex =0;
  // cria constante com as caracteristicas do texto
  static const TextStyle optionStyle = TextStyle(
    fontSize:30,fontWeight: FontWeight.bold );



    // cria lista com os Widgets
    static const List<Widget> _widgetOptions =<Widget>[
      //Text('Index 0:Home',style: optionStyle,),
      Home(),
      CheckBoxExample(),
      //Text('Index 1: School',style: optionStyle,),
      //Text('Index 2: Business',style: optionStyle,)
      RadioButtomExample(),
      ChatScreen()
    ];


    // cria função que será responsável por alterar o index da seleçao da tela
    void onItemTapped(int index){
      setState(() {
        selectindex = index;
      });

    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicativo Aula 11"),
        // centerTitle centraliza o titulo do aplicativo
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body:Center(
        // _widgetOptions é a lista com as telas
        child: _widgetOptions.elementAt(selectindex),
      ) ,



      // Cria o bottom Navigator

      bottomNavigationBar: BottomNavigationBar(
        // currentIndex é o index atual
        currentIndex: selectindex,
        selectedItemColor: Colors.white,
        // onTap é o parametro que é executado quando clicamos no icone e ai chama a função
        // onItemTapped
        
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red          
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school_outlined),
              label: 'School',
              backgroundColor: Colors.blue
            ),

            BottomNavigationBarItem(
              
              icon: Icon(Icons.business_outlined),
              label: 'Business',
              backgroundColor: Colors.orange),
            BottomNavigationBarItem(
              
              icon: Icon(Icons.smart_toy_outlined),
              label: 'Chatbot',
              backgroundColor: Colors.teal),
              

        ],
        onTap: onItemTapped,
        backgroundColor: Colors.teal,),
    );
  }
}