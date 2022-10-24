import 'package:learnit2/domain/flashcards.dart';
import 'package:flutter/material.dart';
import 'package:flash_card/flash_card.dart';

class FlashCards extends StatefulWidget {
  final Flashcards flashcards;

  const FlashCards({
    Key? key,
    required this.flashcards,
  }) : super(key: key);

  @override
  State<FlashCards> createState() => _FlashCardsState();
}

class _FlashCardsState extends State<FlashCards> {
  @override
  Widget build(BuildContext context) {
    return FlashCard(
      width: 400,
      height: 900,
      frontWidget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            widget.flashcards.resposta,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
      backWidget: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.flashcards.pergunta,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
