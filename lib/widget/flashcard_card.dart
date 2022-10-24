import 'package:flash_card/flash_card.dart';
import 'package:flutter/material.dart';
import 'package:learnit2/domain/about.dart';
import '../domain/about.dart';

class Flashcard extends StatefulWidget {
  final About about;

  const Flashcard({
    Key? key,
    required this.about,
  }) : super(key: key);

  @override
  State<Flashcard> createState() => _FlashcardState();
}

class _FlashcardState extends State<Flashcard> {
  @override
  Widget build(BuildContext context) {
    return FlashCard(
      width: 400,
      height: 900,
      frontWidget: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white10,
                  image: DecorationImage(
                      image: NetworkImage(
                        widget.about.image,
                      ),
                      fit: BoxFit.cover)),
              width: 400,
              height: 300,
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      backWidget: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.about.title,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white10,
                  image: DecorationImage(
                      image: NetworkImage(
                        widget.about.image,
                      ),
                      fit: BoxFit.cover)),
              width: 400,
              height: 300,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              widget.about.text,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16,
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
