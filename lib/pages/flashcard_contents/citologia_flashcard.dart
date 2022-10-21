import 'package:flutter/material.dart';
import 'package:learnit2/widget/flashcard_card.dart';
import '../../data/dao/about_dao.dart';
import '../../domain/about.dart';
import '../../widget/about_card.dart';
import 'package:learnit2/pages/home/home_page.dart';

class FlashCitologia extends StatefulWidget {
  const FlashCitologia({Key? key}) : super(key: key);

  @override
  State<FlashCitologia> createState() => _FlashCitologiaState();
}

class _FlashCitologiaState extends State<FlashCitologia> {
  Future<List<About>> lista = AboutDao().listarAbout();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlashCitologia'),
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
    return FutureBuilder<List<About>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<About> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return Flashcard(about: lista[index]);
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
