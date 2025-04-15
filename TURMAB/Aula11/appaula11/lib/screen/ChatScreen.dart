import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  // Cria uma lista com as mensagens

  final List<Map<String,dynamic>> _messages=[
    {
         'text':'Tipos de solos agricolas',
         'isMe':true,
         'time':'5:20 PM'
    },
    {
         'text':'Calcario, Argiloso',
         'isMe':true,
         'time':'5:18 PM'
    },
    {
         'text':'Qual a melhor semente para plantar em maio',
         'isMe':false,
         'time':'5:28 PM'
    },
    {
         'text':'Chatbot',
         'isMe':false,
         'time':'5:30 PM'
    },
    {
         'text':'AgroIoT',
         'isMe':false,
         'time':'5:38 PM'
    },

  ];

  // cria função para enviar mensagens

  void _sendMessage(){
    if(_controller.text.trim().isEmpty)return;
    setState(() {
      _messages.add({'text':_controller.text.trim(),
      'isMe':true,
      'time':TimeOfDay.now().format(context),
      
      });
      // limpa o campo apos o envio das mensagens
      _controller.clear();
    });
  }

  // Cria função para limpar as mensagens
  void _limparMessages(){
    setState(() {
      _messages.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person),
          ),
          title: Text('Senai',style: TextStyle(color: Colors.white),),
        ),
        backgroundColor: Colors.teal,
      ),
      body:Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: _messages.length,
              itemBuilder: (context,index){
                final msg = _messages[index];
                return MessageBubble(
                  text: msg['text'],
                   isMe: msg['isMe'], 
                   time: msg['time']);
              })),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Digite sua mensagem',
                          border: InputBorder.none
                        ),
                      )),
                      IconButton(
                        onPressed:_sendMessage, icon: Icon(Icons.send),
                        color: Colors.teal,),
                      IconButton(
                        onPressed:_limparMessages, icon: Icon(Icons.clear),
                        color: Colors.teal,),

                  ],
                ),
                
                
                )
        ],
      ) ,
    );
  }
}

class MessageBubble extends StatelessWidget {
  // cria variaveis e o construtor
  final String text;
  final bool isMe;
  final String time;
    const MessageBubble({required this.text, required this.isMe,
    required this.time,super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe? Alignment.centerRight:Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            // margin espaço entre os widgets
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isMe?Colors.green[100]:Colors.grey[300],
              borderRadius: BorderRadius.circular(12)
            ),
            child: Text(text),
          ),
          Text(time,style: TextStyle(fontSize: 10,color: Colors.grey),)
        ],
      ),
    );
  }
}