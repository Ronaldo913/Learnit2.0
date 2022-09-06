import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnit2/domain/questoes_conteudo.dart';
import 'package:learnit2/pages/quest.dart';

class CardQuestoesConteudo extends StatefulWidget {
  final QuestoesConteudo questoesConteudo;

  const CardQuestoesConteudo({
    Key? key,
    required this.questoesConteudo,
  }) : super(key: key);

  @override
  State<CardQuestoesConteudo> createState() => _CardQuestoeConteudoState();
}

class _CardQuestoeConteudoState extends State<CardQuestoesConteudo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: 30,),
      InkWell(
        onTap: queston,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(padding: const EdgeInsets.only(bottom: 30.0, top: 30.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(widget.questoesConteudo.titulo, textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      )
      ],
    );
  }

  void queston() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const QuestPage();
        },
      ),
    );
  }

}
