import 'package:flutter/material.dart';
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
    super.initState();
    animacao();
    // player = AudioPlayer();
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
                child: Image.network('https://ronaldo913.github.io/ImagensPMovel/images/logo.png'),
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
