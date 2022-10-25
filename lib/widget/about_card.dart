import 'package:flash_card/flash_card.dart';
import 'package:flutter/material.dart';
import 'package:learnit2/domain/about.dart';
import '../domain/about.dart';

class AboutCard extends StatefulWidget {
  final About about;

  const AboutCard({
    Key? key,
    required this.about,
  }) : super(key: key);

  @override
  State<AboutCard> createState() => _AboutCardState();
}

class _AboutCardState extends State<AboutCard> {
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
                  color: Colors.grey,
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
