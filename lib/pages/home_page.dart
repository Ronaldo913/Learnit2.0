import 'package:flutter/material.dart';
import 'package:learnit2/pages/assuntos_page.dart';
import 'package:learnit2/pages/cronograma_page.dart';
import 'package:learnit2/pages/home.dart';
import 'package:learnit2/pages/perfil_page.dart';
import 'package:learnit2/pages/questoes_page.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = const [
    Home(),
    QuestoesPage(),
    AssuntosPage(),
    Center(child: Text('Page Temporaria', style: TextStyle(fontSize: 36))),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn It + Bio'),
        backgroundColor: const Color(0xFF0B4619),
        toolbarHeight: 64,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PerfilPage();
                    },
                  ),
                );
              },
              child: const UserAccountsDrawerHeader(
                accountName: Text("Usuário"),
                accountEmail: Text("usuario123@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                  NetworkImage(
                      'https://www.lacazmartins.com.br/wp-content/uploads/2017/05/sem-foto-oficial.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.event_note,
              ),
              title: const Text("Cronograma",
                style: TextStyle(
                    fontSize: 24
                ),
              ),
              subtitle: const Text("Um cronograma para você...",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CronogramaPage();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),

      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFFE81F7C),
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
            icon: Icon(Icons.live_help),
            label: 'Questões',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories),
            label: 'Conteúdos',
          ),
        ],

      ),

    );
  }
}
