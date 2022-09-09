import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:learnit2/domain/network.dart';
import '../home/assuntos_page.dart';
import '../home/home.dart';
import '../home/questoes_page.dart';
import 'package:learnit2/pages/sideBar/network_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  List pages = const [
    NetworkPage(),
    Center(child: Text('Page Temporaria', style: TextStyle(fontSize: 36))),
    Center(child: Text('Page Temporaria', style: TextStyle(fontSize: 36))),
    Center(child: Text('Page Temporaria', style: TextStyle(fontSize: 36))),
    Center(child: Text('Page Temporaria', style: TextStyle(fontSize: 36))),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 55),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: AppBar(
              actions: [
                Icon(
                  Icons.bookmark_border_rounded,
                  size: 23,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.notifications_none_sharp,
                  size: 24,
                ),
                SizedBox(width: 10)
              ],
              centerTitle: false,
              title: Image(
                image: NetworkImage('https://ronaldo913.github.io/ImagensPMovel/images/Bio%20+.png'),
                width: 65,
              ),
              elevation: 0,
              backgroundColor: Color(0xFF012340),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black12,

      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        backgroundColor: Color(0xFF012340),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Rels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Conteúdos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket),
            label: 'Impulsionar',
          ),
        ],

      ),
    );
  }

}
