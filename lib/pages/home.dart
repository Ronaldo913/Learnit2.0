import 'package:flutter/material.dart';
import 'package:learnit2/pages/assuntos_page.dart';
import 'package:learnit2/pages/pacote_page.dart';
import 'package:learnit2/pages/questoes_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image.network('https://ronaldo913.github.io/ImagensPMovel/images/logo.png'),
          const SizedBox(height: 24),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: const EdgeInsets.all(16),
                  child: ElevatedButton(onPressed: onPressedButton,
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 20),
                      child: const Text(
                        'CONTEÚDOS',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF125C13),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(16),
                  child: ElevatedButton(onPressed: onPressedButton2,
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 20),
                      child: const Text(
                        'QUESTÕES',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF125C13),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Padding(padding: EdgeInsets.all(20),
                  child: ElevatedButton(onPressed: onPressedButton3,
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 24),
                      child: const Text(
                        'PREMIUM',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0)
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }


  void onPressedButton(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const AssuntosPage();
        },
      ),
    );
  }

  void onPressedButton2(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const QuestoesPage();
        },
      ),
    );
  }

  void onPressedButton3(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const PacotePage();
        },
      ),
    );
  }

}
