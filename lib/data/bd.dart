import 'package:learnit2/domain/usuario.dart';
import 'package:learnit2/domain/pacote_estudo.dart';
import 'package:learnit2/domain/questoes_conteudo.dart';
import 'package:learnit2/domain/questoes.dart';

class BD {
  static final List<Usuario> lista = [
    Usuario(
      nome: 'Mayara',
      sobrenome: 'Silva',
      nascimento: '25/04/2004',
      celular: '82999000364',
      email: 'mayara@email.com',
      cpf: '123.456.789-00',
      username: 'mayarinhan',
      senha: '123456789',
    ),
    Usuario(
      nome: 'Ronaldo',
      sobrenome: 'Noberto',
      nascimento: '29/11/2004',
      celular: '82999000364',
      email: 'ronaldo@email.com',
      cpf: '123.456.789-00',
      username: 'RonaldoN',
      senha: '123456789',
    ),
    Usuario(
      nome: 'Waldemar',
      sobrenome: 'Philype',
      nascimento: '25/09/2004',
      celular: '82999000364',
      email: 'waldemar@email.com',
      cpf: '123.456.789-00',
      username: 'WaldemarP',
      senha: '123456789',
    ),
    Usuario(
      nome: 'João',
      sobrenome: 'Pedro',
      nascimento: '29/11/2005',
      celular: '82999000364',
      email: 'joao@email.com',
      cpf: '123.456.789-00',
      username: 'JoãoP',
      senha: '123456789',
    ),
    Usuario(
      nome: 'Jhennifer',
      sobrenome: 'Maia',
      nascimento: '29/11/2004',
      celular: '82999000364',
      email: 'Jhennifer@email.com',
      cpf: '123.456.789-00',
      username: 'JhenniferM',
      senha: '123456789',
    ),
  ];

  static Future<List<Usuario>> getUsuario() async {
    await Future.delayed(const Duration(seconds: 1));
    return lista;
  }

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
  
  static List<QuestoesConteudo> listaquest= [
    QuestoesConteudo(titulo: 'Introdução à Biologia'),
    QuestoesConteudo(titulo: 'Embriologia'),
    QuestoesConteudo(titulo: 'Citologia'),
    QuestoesConteudo(titulo: 'Genética'),
    QuestoesConteudo(titulo: 'Biofísica'),
    QuestoesConteudo(titulo: 'Botânica I (Morfologia e Anatomia Vegetal)'),
    QuestoesConteudo(titulo: 'Botânica II'),
    QuestoesConteudo(titulo: 'Anatomia Humana'),
    QuestoesConteudo(titulo: 'Biologia Celular'),
    QuestoesConteudo(titulo: 'Ecologia Geral'),
    QuestoesConteudo(titulo: 'Histologia')
  ];

  static Future<List<QuestoesConteudo>> getListaQuest() async {
    await Future.delayed(const Duration(seconds: 1));
    return listaquest;
  }

  static List<Questoes> lista3 = [
    Questoes(
      enunciado: 'Costuma-se dizer que as células são formadas por membrana, citoplasma e núcleo. Entretanto, não são todas as células que apresentam um núcleo definido e delimitado por membrana nuclear. Baseando-se nisso, o mais correto seria afirmar que todas as células possuem membrana, citoplasma e material genético. As células que apresentam núcleo definido são chamadas de:',
      a: 'a) autotróficas',
      b: 'b) heterotróficas',
      c: 'c) eucarióticas',
      d: 'd) procarióticas',
    ),
    Questoes(
      enunciado: 'Costuma-se dizer que as células são formadas por membrana, citoplasma e núcleo. Entretanto, não são todas as células que apresentam um núcleo definido e delimitado por membrana nuclear. Baseando-se nisso, o mais correto seria afirmar que todas as células possuem membrana, citoplasma e material genético. As células que apresentam núcleo definido são chamadas de:',
      a: 'a) autotróficas',
      b: 'b) heterotróficas',
      c: 'c) eucarióticas',
      d: 'd) procarióticas',
    ),
  ];

  static Future<List<Questoes>> getQuestoes() async {
    await Future.delayed(const Duration(seconds: 3));
    return lista3;
  }
  
}


