import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import '../../data/shared_prefs_helper.dart';
import '../Previous/login_page.dart';
import '../home/home_page.dart';
// import 'package:audioplayers/audioplayers.dart';

class AnimationPage extends StatefulWidget {
  final Widget page;

  const AnimationPage({Key? key, required this.page}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  void initState() {
    final player = AudioCache();
    player.play('./audio-splash.mp3');
    super.initState();
    loadData();
    // player = AudioPlayer();
  }

  loadData() async {
    await Future.delayed(
      const Duration(seconds: 4),
    );

    bool isLogged = await SharedPrefsHelper().getUser();
    if (isLogged == true) {
      // Ir p/ pag de HomePage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ),
      );
    } else {
      // Ir p/ pag de Login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const Loginpage();
          },
        ),
      );
    }
  }

  // AudioPlayer? player;
  //
  // void runAudio(String url) async {
  //   AudioPlayer audio = AudioPlayer();
  //   try {
  //     var resultado =  await audio.play(AssetSource(url));
  //   } catch(e) {
  //     print(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.white,
            child: Center(
              child: Container(
                height: 650,
                width: 650,
                child: Image.network(
                    'https://ronaldo913.github.io/ImagensPMovel/images/logo.png'),
                // runAudio("som-abertura.mp3");
              ),
            )),
      ),
    );
  }

  void animacao() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return widget.page;
        },
      ),
    );
  }
}
