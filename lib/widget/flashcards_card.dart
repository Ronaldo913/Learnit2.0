import 'package:learnit2/domain/flashcardss.dart';
import 'package:flutter/material.dart';
import 'package:flash_card/flash_card.dart';

class FlashCards extends StatefulWidget {
  final Flashcardss flashcardsss;

  const FlashCards({
    Key? key,
    required this.flashcardsss,
  }) : super(key: key);

  @override
  State<FlashCards> createState() => _FlashCardsState();
}

class _FlashCardsState extends State<FlashCards> {
  @override
  Widget build(BuildContext context) {
    return FlashCard(
      width: 500,
      height: 200,
      frontWidget: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.flashcardsss.pergunta,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      backWidget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            widget.flashcardsss.resposta,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }
}
