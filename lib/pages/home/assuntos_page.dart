import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnit2/domain/questoes_conteudo.dart';
import 'package:learnit2/widget/questoes_conteudo_card.dart';

import '../../data/dao/content_dao.dart';

class AssuntosPage extends StatefulWidget {
  const AssuntosPage({Key? key}) : super(key: key);

  @override
  State<AssuntosPage> createState() => _AssuntosPageState();
}

class _AssuntosPageState extends State<AssuntosPage> {
  Future<List<QuestoesConteudo>> lista = ContentDao().listarQuestoesConteudo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16), buildListView()
          ],
        ),
      ),
    );
  }

  buildListView(){
    return FutureBuilder<List<QuestoesConteudo>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<QuestoesConteudo> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return CardQuestoesConteudo(questoesConteudo: lista[index]);
            },
          );
        }
        return Center(child: const CircularProgressIndicator());
      },
    );
  }
}
