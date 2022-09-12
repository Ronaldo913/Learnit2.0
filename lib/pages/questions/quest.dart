import 'package:flutter/material.dart';
import 'package:learnit2/data/bd.dart';
import 'package:learnit2/domain/questoes.dart';
import 'package:learnit2/pages/home/home_page.dart';
import 'package:learnit2/widget/questoes_card.dart';

class QuestPage extends StatefulWidget {
  const QuestPage({Key? key}) : super(key: key);

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  Future<List<Questoes>> lista3 = BD.getQuestoes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUESTÕES - CITOLOGIA'),
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [const SizedBox(height: 16), buildListView()],
        ),
      ),
    );
  }

  void goHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ),
    );
  }

  buildListView() {
    return FutureBuilder<List<Questoes>>(
      future: lista3,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Questoes> lista3 = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista3.length,
            itemBuilder: (BuildContext context, int index) {
              return CardQuestoes(questoes: lista3[index]);
            },
          );
        }
        return Center(child: const CircularProgressIndicator());
      },
    );
  }
}

children(Type widget) {}
