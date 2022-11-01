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
        child: Container(
          width: 400,
          height: 60,
          margin: EdgeInsets.only(bottom: 24.0, top: 10),
          color: Colors.white,
          child: Text(
            widget.settings.title,
            style: TextStyle(fontSize: 20),
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
