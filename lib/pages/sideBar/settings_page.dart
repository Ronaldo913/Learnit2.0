import 'package:flutter/material.dart';

import '../home/home_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
        backgroundColor: Color(0xFF0B4619),
        toolbarHeight: 64,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xFFB6D0BB),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 24.0, top: 10),
                  color: Colors.white,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Gerenciar meus dados", style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 24.0, top: 16),
                  color: Colors.white,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Dispositivos conectados", style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),Container(
                  width: 400,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 24.0, top: 16),
                  color: Colors.white,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Mudar senha", style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),Container(
                  width: 400,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 24.0, top: 16),
                  color: Colors.white,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Tema", style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),Container(
                  width: 400,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 24.0, top: 16),
                  color: Colors.white,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Idioma", style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 24.0, top: 16),
                  color: Colors.white,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Sistema web", style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),Container(
                  width: 400,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 24.0, top: 16),
                  color: Colors.white,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Política e privacidade", style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),Container(
                  width: 400,
                  height: 60,
                  margin: EdgeInsets.only(bottom: 24.0, top: 16),
                  color: Colors.white,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Deletar conta", style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
              ],
            )

          ),
        ),
      ),
    );
  }
}
