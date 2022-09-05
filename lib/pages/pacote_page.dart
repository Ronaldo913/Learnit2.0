import 'package:flutter/material.dart';
import 'package:learnit2/domain/pacote_estudo.dart';
import 'package:learnit2/widget/pacote_estudo_card.dart';
import 'package:learnit2/data/bd.dart';

class PacotePage extends StatefulWidget {
  const PacotePage({Key? key}) : super(key: key);

  @override
  _PacotePageState createState() => _PacotePageState();
}

class _PacotePageState extends State<PacotePage> {
  Future<List<PacoteEstudo>> lista = BD.getPacoteEstudo();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [const SizedBox(height: 16), buildListView()],
      ),
    );
  }

  buildListView() {
    return FutureBuilder<List<PacoteEstudo>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PacoteEstudo> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return CardPacoteEstudo(pacoteEstudo: lista[index]);
            },
          );
        }
        return Center(child: const CircularProgressIndicator());
      },
    );
  }
}
