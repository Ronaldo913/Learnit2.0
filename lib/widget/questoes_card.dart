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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 30.0, top: 30.0, right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.questoes.enunciado,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.questoes.a,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    widget.questoes.b,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    widget.questoes.c,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    widget.questoes.d,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: InkWell(
                      splashColor: Color(0xFF0B4619),
                      onTap: () {
                        const snackBar = SnackBar(
                          content: Text('c) Eucarióticas.'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text("CLIQUE AQUI PARA VER A RESPOSTA"),
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
