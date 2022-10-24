import 'package:learnit2/domain/about.dart';
import 'package:learnit2/domain/network.dart';
import 'package:learnit2/domain/user.dart';
import 'package:learnit2/domain/pacote_estudo.dart';
import 'package:learnit2/domain/questoes_conteudo.dart';
import 'package:learnit2/domain/questoes.dart';
import 'package:learnit2/domain/cronograma.dart';
import 'package:learnit2/pages/flashcard_contents/citologia_flashcard.dart';
import 'package:learnit2/pages/questions/quest.dart';
import 'package:learnit2/pages/contents/conteudo_page.dart';
import '../../domain/conteudo.dart';
import '../../pages/contents/conteudo2_page.dart';

class BD {
  static final List<PacoteEstudo> lista1 = [
    PacoteEstudo(
      imagem: 'https://ronaldo913.github.io/ImagensPMovel/images/foco.png',
      titulo: 'Pacote Foco',
      desconto: 10,
      numParcelas: 6,
      precoAntigo: 19.90,
      precoAtual: 9.90,
      redacao: 1,
      aula: 100,
      exercicio: 300,
      horas: 10,
      duvida: 0,
    ),
    PacoteEstudo(
      imagem:
          'https://ronaldo913.github.io/ImagensPMovel/images/avan%C3%A7ado.png',
      titulo: 'Pacote Médio',
      desconto: 10,
      numParcelas: 8,
      precoAntigo: 35.00,
      precoAtual: 20.00,
      redacao: 3,
      aula: 150,
      exercicio: 500,
      horas: 15,
      duvida: 1,
    ),
    PacoteEstudo(
      imagem: 'https://ronaldo913.github.io/ImagensPMovel/images/learnmed.png',
      titulo: 'Pacote LearnMed',
      desconto: 10,
      numParcelas: 10,
      precoAntigo: 50.00,
      precoAtual: 30.00,
      redacao: 5,
      aula: 200,
      exercicio: 700,
      horas: 20,
      duvida: 3,
    ),
  ];

  static Future<List<PacoteEstudo>> getPacoteEstudo() async {
    await Future.delayed(const Duration(seconds: 1));
    return lista1;
  }


  static List<Cronograma> listacrono = [
    Cronograma(
        title: 'Estudar Embriologia',
        hour: 12,
        minute: 30,
        day: 'Terça',
        color: 0xFF02A676),
    Cronograma(
        title: 'Estudar Citologia',
        hour: 13,
        minute: 45,
        day: 'Terça',
        color: 0xFF008C72),
    Cronograma(
        title: 'Estudar Histologia',
        hour: 14,
        minute: 55,
        day: 'Terça',
        color: 0xFF007369),
    Cronograma(
        title: 'Estudar Genetica',
        hour: 15,
        minute: 20,
        day: 'Terça',
        color: 0xFF005A5B),
    Cronograma(
        title: 'Estudar Sexologia',
        hour: 18,
        minute: 08,
        day: 'Terça',
        color: 0xFF003840),
  ];

  static Future<List<Cronograma>> getListaCrono() async {
    await Future.delayed(const Duration(seconds: 1));
    return listacrono;
  }
}
