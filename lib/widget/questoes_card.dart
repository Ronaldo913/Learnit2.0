import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnit2/domain/questoes.dart';
import 'package:learnit2/pages/quest.dart';

class CardQuestoes extends StatefulWidget {
  final Questoes questoes;

  const CardQuestoes({
    Key? key,
    required this.questoes,
  }) : super(key: key);

  @override
  _CardQuestoesState createState() => _CardQuestoesState();
}

class _CardQuestoesState extends State<CardQuestoes> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return QuestPage(
                questoes: widget.questoes,
              );
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(padding: const EdgeInsets.only(top: 18.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(titulo, textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0,),
                ],
              ),
          ),
        ),
    );
  }
