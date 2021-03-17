import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  final String menssage;
  ChatScreen({this.name, this.menssage});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(widget.name),
          Text(widget.menssage),
        ],
      ),
    );
  }
}
