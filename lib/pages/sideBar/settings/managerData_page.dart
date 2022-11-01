import 'package:flutter/material.dart';

class ManageData extends StatefulWidget {
  const ManageData({Key? key}) : super(key: key);

  @override
  State<ManageData> createState() => _ManageDataState();
}

class _ManageDataState extends State<ManageData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text("Gerência", style: TextStyle(fontSize: 60),),
        ),
      ),
    );
  }
}
