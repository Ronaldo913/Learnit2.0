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
    return Card(
      color: Color(0xFF02A676),
      margin: EdgeInsets.only(bottom: 25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.about.title,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
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
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
