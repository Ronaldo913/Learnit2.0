import 'package:flutter/material.dart';

class Procura extends StatefulWidget {
  const Procura({Key? key}) : super(key: key);

  @override
  State<Procura> createState() => _ProcuraState();
}

class _ProcuraState extends State<Procura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: TextFormField(
            style: const TextStyle(
              color: Colors.black,
            ),
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintStyle: TextStyle(
                color: Colors.grey,
                fontFamily: "WorkSansLight",
                fontSize: 16,
              ),
              hintText: "Procurar...",
              prefixIcon: Icon(
                Icons.search,
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
