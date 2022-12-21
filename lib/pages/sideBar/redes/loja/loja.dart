import 'package:learnit2/pages/sideBar/redes/item/main.dart';
import 'package:learnit2/pages/sideBar/redes/loja/Categorias.dart';
import 'package:flutter/material.dart';

class Loja extends StatefulWidget {
  const Loja({Key? key}) : super(key: key);

  @override
  State<Loja> createState() => _LojaState();
}

class _LojaState extends State<Loja> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: TextFormField(
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              hintText: "Search Here", border: InputBorder.none),
                        ),
                      ),
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 23,
              child: Categorias(),
            ),
          ],
        ),
      ),
    );
  }
}
