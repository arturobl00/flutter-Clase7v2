import 'package:clase7/modelos/chat_model.dart';
import 'package:clase7/paginas/chat_screen.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: Row(
              //Separar o poner un espacio entre dos text
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(messageData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                //Text(" "),
                Text(messageData[i].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0))
              ],
            ),
            subtitle: Container(
              child: Text(
                messageData[i].message,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
            onTap: () {
              //Codigo para cambiar entre pantallas o widgets
              var route = MaterialPageRoute(
                  builder: (BuildContext context) => ChatScreen(
                        name: messageData[i].name,
                        menssage: messageData[i].message,
                      ));
              Navigator.of(context).push(route);
            },
          )
        ],
      ),
    );
  }
}
