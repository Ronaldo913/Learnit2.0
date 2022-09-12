import 'package:flutter/material.dart';

class ComentarioPage extends StatefulWidget {
  const ComentarioPage({Key? key}) : super(key: key);

  @override
  State<ComentarioPage> createState() => _ComentarioPageState();
}

class _ComentarioPageState extends State<ComentarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 50),
      child: TextFormField(
        style: TextStyle(
          color: Colors.black,
        ),
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintStyle: TextStyle(
            color: Colors.grey,
            fontFamily: "WorkSansLight",
            fontSize: 16,
          ),
          hintText: "Comente algo",
          prefixIcon: const Icon(
            Icons.email,
            color: Colors.grey,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(90.0)),
            borderSide: BorderSide(
              color: Color(0xFF087f23),
              width: 1.5,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(90.0)),
              borderSide: BorderSide(color: Colors.grey, width: 0.5)),
        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Campo vazio!';
          }
          return null;
        },
      ),
    ));
  }
}
