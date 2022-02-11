import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage> {

  final TextEditingController _textController = TextEditingController();
  void _handleSubmitted(String text) => _textController.clear();

  Widget _buildTextComposer() => Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
          children: <Widget> [Flexible(
              child: TextField(
                  controller: _textController,
                  onSubmitted: _handleSubmitted,
                  decoration: const InputDecoration.collapsed(hintText: 'Developing'))
          ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.green),
                    onPressed: () => _handleSubmitted(_textController.text)))
          ]
      )
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Chat'), centerTitle: true),
    body: _buildTextComposer(),
  );
}