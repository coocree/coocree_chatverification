import 'package:coocree_chatverification/export.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ChatBubbleWithTriangle(message: 'Integer pharetra eri', isMe: false),
      ),
    );
  }
}


