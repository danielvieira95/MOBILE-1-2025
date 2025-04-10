import 'package:flutter/material.dart';
    
   void main() {
     runApp(NavBotton());
 }
  /*
  Classe NavBotton:
   
  A classe NavBotton é um StatelessWidget que define a tela principal, que é a Navigator_screen. O MaterialApp contém essa tela como home.
  */
  class NavBotton extends StatelessWidget {
    const NavBotton({super.key});
   
    @override
    Widget build(BuildContext context) {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Navigator_screen(),
     );
    }
  }
  /*
  Classe Navigator_screen:
  Navigator_screen é um StatefulWidget, já que o estado da tela muda de acordo com o item selecionado no BottomNavigationBar.
  A variável selectIndex controla qual widget será exibido na tela principal com base na escolha do usuário no menu de navegação inferior.
  
  */
  
  class Navigator_screen extends StatefulWidget {
    const Navigator_screen({super.key});
   
    @override
    State<Navigator_screen> createState() => _Navigator_screenState();
   
  }
  class _Navigator_screenState extends State<Navigator_screen> {
   int selectIndex =0; // variavel pela escolha do widget bar
    // Constante para definir caracteristicas do texto
    static const TextStyle optionStyle =  TextStyle(fontSize: 30, fontWeight: FontWeight.bold); 
   
  //A lista _widgetOptions contém os diferentes widgets (telas) que serão exibidos //com base na seleção do BottomNavigationBar.
   
 
   // Cria lista de widgets 
    static const List<Widget> _widgetOptions = <Widget>[   
        
     /*Text(
        'Index 0: School',
        style: optionStyle,
      ), */
     // Tela1() ,  
     TelaHome(),
     /*Text(
        'Index 1: Business',
        style: optionStyle,
      ),*/
     CheckboxExample(),
      RadioButton(),
      /*Text(
        'Index 2: School',
        style: optionStyle,
     ),
      */
      Text(
        'Index 3: Settings',
        style: optionStyle,
      ),
      ChatScreen()
      
    ];
  // O método onItemTapped() altera o valor de selectIndex para refletir o item //selecionado.
   
    void onItemTapped(int index) {
      setState(() {
       selectIndex = index;
        
        
     });
    }
    @override
    Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text("Aplicativo aula 11"),
        ),
        body:  Center(
          child: _widgetOptions.elementAt(selectIndex),
        ),
   
  /*BottomNavigationBar:
  Contém quatro itens: "Home", "Business", "School" e "Settings", com ícones e cores definidas. O item selecionado é destacado, 
  e o conteúdo da tela muda de acordo com a escolha do usuário.
  */
       bottomNavigationBar: BottomNavigationBar(
         items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
            label: 'Home',
           backgroundColor: Colors.red,
          ),
           BottomNavigationBarItem(
             icon: Icon(Icons.business),
        label: 'Business',
             backgroundColor: Colors.blue,
           ),
          BottomNavigationBarItem(
             icon: Icon(Icons.school),
             label: 'School',
             backgroundColor: Colors.orange,
           ),
          BottomNavigationBarItem(
             icon: Icon(Icons.settings),
             label: 'Settings',
            backgroundColor: Colors.purple,
           ),
           BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy_outlined),
            label: 'Chatbot',
            backgroundColor: Colors.teal,
          ),

         ],
         currentIndex: selectIndex,
         selectedItemColor: Colors.white,
         onTap: onItemTapped,
       ),
     
         
           
           
  
     );
   }
 }
 
 /*
137. Telas Individuais:
138. Tela Home (TelaHome): Uma tela simples com um texto centralizado, indicando "Mobile 2".
139.  
140. */
 class TelaHome extends StatelessWidget {
   const TelaHome({super.key});
 static const TextStyle styletext =  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
  
           Center(child: Text("Mobile 1",style: styletext)),
         ],
       ),
     );
   } }
 
 /*
160. Checkbox (CheckboxExample): Exibe um Checkbox que altera o estado de um valor booleano (ischeck) que é exibido na tela.
161. Radio Button (RadioButton): Exibe três opções de RadioListTile, e o valor selecionado é armazenado na variável selectOption.
162.  
163. */
 class CheckboxExample extends StatefulWidget {
   const CheckboxExample({super.key});
 
   @override
   State<CheckboxExample> createState() => CheckBoxState();
 }
  
 class CheckBoxState extends State<CheckboxExample> {
    // variavel para armazenar o valor do check box
    
    bool ischeck = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
         children: [
           Text("Check Box 1"),
           Checkbox(
            // Value é o parametro do check box
             // ischeck variavel booleana que recebe o parametro value do check box
           value:  ischeck, 
           onChanged:(bool? value){
             setState(() {
               ischeck = value!;
               
             });
           }           
           
          
            ),
             Text("Status do checkbox $ischeck"),
         ],
       ),
     );
   }
 }
  
 class RadioButton extends StatefulWidget {
   const RadioButton({super.key});
  
   @override
   State<RadioButton> createState() => _RadioButtonState();
 }
  
 class _RadioButtonState extends State<RadioButton> {
   int ? selectOption;
   @override
   Widget build(BuildContext context) {
     return Column(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
         RadioListTile<int>(
           title: Text("Opção 1"),
           value: 1,
           groupValue: selectOption,
           onChanged: (value){
             setState(() {
               selectOption = value;
               
             });
           },
  
         ),
         RadioListTile<int>(
           title: Text("Opção 2"),
           value: 2,
           groupValue: selectOption,
           onChanged: (value){
             setState(() {
              selectOption = value;
               
             });
           },
  
         ),
         RadioListTile(
           title: Text("Opção 3"),
           value: 3,
           groupValue: selectOption,
           onChanged: (value){
             setState(() {
               selectOption = value;
               
             });
          },
  
         ),
         Text("Radio button opção $selectOption"),
  
       ],
     );
   }
 }
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  final List<Map<String, dynamic>> _messages = [
    {
      'text': "Tipos de solo agricola",
      'isMe': true,
      'time': "5:20 PM"
    },
    {'text': "Calcario, argiloso", 'isMe': true, 'time': "5:20 PM"},
    {'text': "Arenoso", 'isMe': false, 'time': "5:18 PM"},
    {
      'text': "Qual a melhor semente para plantar em maio",
      'isMe': false,
      'time': "5:18 PM"
    },
    {'text': "Agro IOT", 'isMe': true, 'time': "5:20 PM"},
    {'text': "Projeto integrador", 'isMe': false, 'time': "5:22 PM"},
    {
      'text': "Chatbot",
      'isMe': false,
      'time': "5:30 PM"
    },
  ];

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      _messages.add({
        'text': _controller.text.trim(),
        'isMe': true,
        'time': TimeOfDay.now().format(context),
      });
      _controller.clear();
    });
  }
void _limparMessages(){
  setState(() {
    _messages.clear();
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person),
          ),
          title: Text('Senai', style: TextStyle(color: Colors.white)),
          //subtitle: Text('last seen today at 13:25',
            //  style: TextStyle(color: Colors.white70, fontSize: 12)),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                return MessageBubble(
                  text: msg['text'],
                  isMe: msg['isMe'],
                  time: msg['time'],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Digite sua mensagem ",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.teal),
                  onPressed: _sendMessage,
                ),
                IconButton(onPressed: _limparMessages, icon: Icon(Icons.delete_outlined,color: Colors.teal,))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;
  final String time;

  const MessageBubble({
    super.key,
    required this.text,
    required this.isMe,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isMe ? Colors.green[100] : Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(text),
          ),
          Text(
            time,
            style: const TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
