import 'package:flutter/material.dart';
import 'package:learnit2/domain/setting.dart';

class SettingCard extends StatefulWidget {
  final Setting settings;

  const SettingCard({
    Key? key,
    required this.settings,
  }) : super(key: key);

  @override
  State<SettingCard> createState() => _SettingCardState();
}

class _SettingCardState extends State<SettingCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: tela,
        child: Card(
          color: Color(widget.settings.color),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: EdgeInsets.only(bottom: 24.0, top: 10),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0, top: 30.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  widget.settings.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void tela() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return widget.settings.page;
        },
      ),
    );
  }
}
