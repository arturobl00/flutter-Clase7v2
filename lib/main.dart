import 'package:clase7/paginas/camara.dart';
import 'package:clase7/paginas/chats.dart';
import 'package:clase7/paginas/estados.dart';
import 'package:clase7/paginas/llamadas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Chat con Flutter",
    theme: ThemeData(
        primaryColor: Color(0xff075E54), accentColor: Color(0xff25D366)),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "ESTADOS",
            ),
            Tab(
              text: "LLAMADAS",
            )
          ],
          controller: controller,
        ),
      ),
      body: TabBarView(
        children: <Widget>[Camara(), Chat(), Estados(), LLamadas()],
        controller: controller,
      ),
    );
  }
}
