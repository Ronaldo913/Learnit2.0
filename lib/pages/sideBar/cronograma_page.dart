import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learnit2/domain/cronograma.dart';
import 'package:learnit2/widget/cronograma_card.dart';
import '../home/home_page.dart';
import 'create_crono_page.dart';
import 'package:learnit2/data/dao/cronograma_dao.dart';

class CronogramaPage extends StatefulWidget {
  const CronogramaPage({Key? key}) : super(key: key);
  _CronogramaPageState createState() => _CronogramaPageState();
}

class _CronogramaPageState extends State<CronogramaPage> {
  Future<List<Cronograma>> lista = CronoDao().listarCronograma();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(' CRONOGRAMA '),
        backgroundColor: Color(0xFF0B4619),
        toolbarHeight: 64,
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            buildListView(),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CreateCronogramaPage();
                    },
                  ),
                );
              },
              child: const Icon(Icons.add),
            ),
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

  void goCreateCronograma() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const CreateCronogramaPage();
        },
      ),
    );
  }

  buildListView() {
    return FutureBuilder<List<Cronograma>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Cronograma> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return CardCronograma(cronogramaCard: lista[index]);
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
