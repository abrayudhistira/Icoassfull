import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mysample/home.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final String apiUrl = 'https://icoass.com/api'; // Ganti dengan URL server Anda
  List<Message> _messages = [];

  @override
  void initState() {
    super.initState();
    _fetchMessages();
  }

  Future<void> _fetchMessages() async {
    final response = await http.get(Uri.parse('$apiUrl/fetch_messages.php'));

    if (response.statusCode == 200) {
      final List messages = json.decode(response.body);
      setState(() {
        _messages = messages.map((json) => Message.fromJson(json)).toList();
      });
    }
  }

  void _sendMessage() async {
    if (_controller.text.isNotEmpty) {
      final response = await http.post(
        Uri.parse('$apiUrl/send_message.php'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'text': _controller.text}),
      );

      if (response.statusCode == 200) {
        _controller.clear();
        _fetchMessages();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ListTile(
                  title: Text(message.text),
                  subtitle: Text(message.timestamp.toString()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'Type your message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  // final int id;
  final String text;
  final DateTime timestamp;

  Message({ required this.text, required this.timestamp});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      // id: json['id'],
      text: json['text'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
