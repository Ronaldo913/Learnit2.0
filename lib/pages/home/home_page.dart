import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:learnit2/pages/Previous/login_page.dart';
import 'package:learnit2/pages/flashcard_contents/flashcard_home.dart';
import 'package:learnit2/pages/home/about_page.dart';
import 'package:learnit2/pages/home/assuntos_page.dart';
import 'package:learnit2/pages/sideBar/redes/bottom_navigation_page.dart';
import 'package:learnit2/pages/sideBar/cronograma_page.dart';
import 'package:learnit2/pages/home/home.dart';
import 'package:learnit2/pages/sideBar/perfil_page.dart';
import 'package:learnit2/pages/home/questoes_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:learnit2/data/shared_prefs_helper.dart';
import 'package:learnit2/pages/sideBar/settings/settings_page.dart';

import '../../main.dart';
import '../splash/animation.dart';

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
        backgroundColor: const Color(0xFF015958),
        toolbarHeight: 64,
      ),

      drawer: Drawer(
        backgroundColor: Color(0xFFFFFFF0),
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
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [
                        Color(0xFF003840),
                        Color(0xFF02A676),
                      ],
                    ),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const BottomNavigationPage();
                    },
                  ),
                );
              },
              child: const ListTile(
                leading: Icon(Icons.wifi,
                ),
                title: Text("Comunidade",
                  style: TextStyle(
                      fontSize: 24,
                  ),
                ),
                subtitle: Text("Atualize-se!",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CronogramaPage();
                    },
                  ),
                );
              },
              child: const ListTile(
                leading: Icon(Icons.event_note,
                ),
                title: Text("Cronograma",
                  style: TextStyle(
                      fontSize: 24
                  ),
                ),
                subtitle: Text("Organize-se",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FlashcardHome();
                    },
                  ),
                );
              },
              child: const ListTile(
                leading: Icon(Icons.event_note,
                ),
                title: Text("FlashCard",
                  style: TextStyle(
                      fontSize: 24
                  ),
                ),
                subtitle: Text("Memorize",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SettingPage();
                    },
                  ),
                );
              },
              child: const ListTile(
                leading: Icon(Icons.settings,
                ),
                title: Text("Configurações",
                  style: TextStyle(
                      fontSize: 23
                  ),
                ),
                subtitle: Text("Configure",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AboutPage();
                    },
                  ),
                );
              },
              child: const ListTile(
                leading: Icon(Icons.favorite_outlined,
                ),
                title: Text("Sobre",
                  style: TextStyle(
                      fontSize: 24
                  ),
                ),
                subtitle: Text("Conheça-nos",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () async {
                AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
                  "Learnit2.0",
                  "Learnit2.0",
                  priority: Priority.max,
                  importance: Importance.max,
                );

                DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
                  presentAlert: true,
                  presentBadge: true,
                  presentSound: true,
                );

                NotificationDetails notiDetails = NotificationDetails(
                  android: androidDetails,
                  iOS: iosDetails,
                );

                await notificationsPlugin.show(
                    0, "Tá saindo por quê?", "Volte sempre!", notiDetails);

                SharedPrefsHelper().logout();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AnimationPage(page: Loginpage());
                    },
                  ),
                );
              },
              child: const ListTile(
                leading: Icon(Icons.event_note,
                ),
                title: Text("Sair",
                  style: TextStyle(
                      fontSize: 24
                  ),
                ),
                subtitle: Text("Tchauzin",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
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
        selectedItemColor: const Color(0xFF012340),
        backgroundColor: Colors.white,
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
