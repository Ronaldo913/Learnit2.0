import 'package:flutter/material.dart';
import 'package:learnit2/pages/home/assuntos_page.dart';
import 'package:learnit2/pages/sideBar/bottom_navigation_page.dart';
import 'package:learnit2/pages/sideBar/cronograma_page.dart';
import 'package:learnit2/pages/home/home.dart';
import 'package:learnit2/pages/sideBar/perfil_page.dart';
import 'package:learnit2/pages/home/questoes_page.dart';
import 'package:learnit2/pages/sideBar/network_page.dart';
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
        backgroundColor: const Color(0xFF025939),
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
              leading: const Icon(Icons.wifi,
              ),
              title: const Text("Redes",
                style: TextStyle(
                    fontSize: 24
                ),
              ),
              subtitle: const Text("Atualize-se!",
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
                        return const BottomNavigationPage();
                      },
                    ),
                  );
                },
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
              subtitle: const Text("Organize-se",
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
            ),
            ListTile(
              leading: const Icon(Icons.event_note,
              ),
              title: const Text("Sobre",
                style: TextStyle(
                    fontSize: 24
                ),
              ),
              subtitle: const Text("Conheça-nos",
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
            ),
            ListTile(
              leading: const Icon(Icons.event_note,
              ),
              title: const Text("Sair",
                style: TextStyle(
                    fontSize: 24
                ),
              ),
              subtitle: const Text("Tchauzin",
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
        selectedItemColor: Color(0xFF012340),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.tips_and_updates),
            label: 'Quiz',
          ),
        ],

      ),

    );
  }
}
