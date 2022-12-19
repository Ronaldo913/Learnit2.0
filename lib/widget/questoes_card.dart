import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:learnit2/domain/questoes.dart';

class CardQuestoes extends StatefulWidget {
  final Questoes questoes;

  const CardQuestoes({
    Key? key,
    required this.questoes,
  }) : super(key: key);

  @override
  State<CardQuestoes> createState() => _CardQuestoesState();
}

class _CardQuestoesState extends State<CardQuestoes> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        InkWell(
          child: Card(
            color: Color(int.parse(widget.questoes.color)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 30.0, top: 30.0, right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.questoes.title,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'a) ' + widget.questoes.a,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'b) ' + widget.questoes.b,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'c) ' + widget.questoes.c,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'd) ' + widget.questoes.d,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: InkWell(
                      splashColor: Color(0xFF0B4619),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(widget.questoes.answer),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "CLIQUE AQUI PARA VER A RESPOSTA",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
