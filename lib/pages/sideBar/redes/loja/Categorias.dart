import 'package:learnit2/pages/sideBar/redes/loja/ItemCategoria.dart';
import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  int item = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              item = index;
              print(item);
            });
          },
          child: Container(
            child: Column(
              children: [
                ItemCategoria(),
                SizedBox(
                  height: 10,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: 80,
                  height: 5,
                  color: item == index ? Colors.green : Colors.white,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
