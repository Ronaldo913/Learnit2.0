import 'package:flutter/material.dart';
import 'package:learnit2/pages/quest.dart';
import 'package:learnit2/domain/questoes.dart';
import 'package:learnit2/data/bd.dart';
import 'home_page.dart';

class QuestoesPage extends StatefulWidget {
  const QuestoesPage({Key? key}) : super(key: key);

  @override
  State<QuestoesPage> createState() => _QuestoesPageState();
}

class _QuestoesPageState extends State<QuestoesPage> {
  Future<List<Questoes>> lista = BD.getListaQuest();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text('MENU - QUESTÕES'),
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
          // add more IconButton
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16), buildListView()
          ],
        ),
      ),
    );
  }

  void goHome() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ),
    );
  }
}
buildListView(){
  
}

