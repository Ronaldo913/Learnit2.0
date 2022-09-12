import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnit2/domain/cronograma.dart';
import 'package:learnit2/pages/sideBar/cronograma_page.dart';

class CardCronograma extends StatefulWidget {
  final Cronograma cronogramaCard;

  const CardCronograma({
    Key? key,
    required this.cronogramaCard,
  }) : super(key: key);

  @override
  _CardCronograma createState() => _CardCronograma();
}

class _CardCronograma extends State<CardCronograma> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Card(
          color: Color(widget.cronogramaCard.color),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.cronogramaCard.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Icon(
                    Icons.alarm, color: Colors.white,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    '${widget.cronogramaCard.hour}:${widget.cronogramaCard.minute}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.event, color: Colors.white,
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        widget.cronogramaCard.day,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
