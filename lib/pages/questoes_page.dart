import 'package:flutter/material.dart';
import 'package:learnit2/domain/questoes.dart';
import 'package:learnit2/data/bd.dart';
import 'package:learnit2/widget/questoes_card.dart';
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

  buildListView(){
    return FutureBuilder<List<Questoes>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Questoes> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return CardQuestoes(questoes: lista[index]);
            },
          );
        }
        return Center(child: const CircularProgressIndicator());
      },
    );
  }
}
