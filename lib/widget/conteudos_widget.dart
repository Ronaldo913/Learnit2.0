import 'package:flutter/material.dart';
import '../domain/conteudo.dart';
import '../pages/questions/quest.dart';

class TemplateConteudo extends StatefulWidget {
  final Conteudo conteudo;
  const TemplateConteudo({Key? key, required this.conteudo}) : super(key: key);

  @override
  State<TemplateConteudo> createState() => _TemplateConteudoState();
}

class _TemplateConteudoState extends State<TemplateConteudo> {
  @override
  Widget build(BuildContext context) {
    void onPressedButton() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const QuestPage();
          },
        ),
      );
    }

    return SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.conteudo.paragrafo1,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              Text(widget.conteudo.paragrafo2,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(height: 24),
              Text(widget.conteudo.titulo2,
                  style:
                      TextStyle(fontSize: 22, color: Colors.greenAccent[400])),
              SizedBox(height: 16),
              Text(widget.conteudo.subtitulo,
                  style: TextStyle(
                    fontSize: 20,
                  )),
              SizedBox(height: 16),
              Text(widget.conteudo.paragrafo3,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text(widget.conteudo.subtitulo2, style: TextStyle(fontSize: 20)),
              SizedBox(height: 16),
              Text(widget.conteudo.paragrafo4,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(height: 24),
              Text(widget.conteudo.titulo3,
                  style:
                      TextStyle(fontSize: 22, color: Colors.greenAccent[400])),
              SizedBox(height: 16),
              Text(widget.conteudo.paragrafo5,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text(widget.conteudo.subtitulo3,
                  style: TextStyle(
                    fontSize: 20,
                  )),
              SizedBox(height: 16),
              Text(widget.conteudo.paragrafo6,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text(widget.conteudo.subtitulo4,
                  style: TextStyle(
                    fontSize: 20,
                  )),
              SizedBox(height: 16),
              Text(widget.conteudo.paragrafo7,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              Text(widget.conteudo.paragrafo8,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text(widget.conteudo.subtitulo5,
                  style: TextStyle(
                    fontSize: 20,
                  )),
              SizedBox(height: 16),
              Text(widget.conteudo.paragrafo9,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              Text(widget.conteudo.espaco1,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              Image.network(widget.conteudo.imagem),
              Text(widget.conteudo.espaco2,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: onPressedButton,
                child: const Text(
                  'QUESTÕES',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent[400],
                ),
              )
            ]));
  }
}
