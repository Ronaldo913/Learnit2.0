import 'package:learnit2/domain/network.dart';
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
    QuestoesConteudo(titulo: 'Introdução à Biologia', color: 0xFF02A676),
    QuestoesConteudo(titulo: 'Embriologia', color: 0xFF008C72),
    QuestoesConteudo(titulo: 'Citologia', color: 0xFF007369),
    QuestoesConteudo(titulo: 'Genética', color: 0xFF005A5B),
    QuestoesConteudo(titulo: 'Biofísica', color: 0xFF003840),
    QuestoesConteudo(titulo: 'Botânica I (Morfologia e Anatomia Vegetal)', color: 0xFF003840),
    QuestoesConteudo(titulo: 'Botânica II', color: 0xFF005A5B),
    QuestoesConteudo(titulo: 'Anatomia Humana', color: 0xFF007369),
    QuestoesConteudo(titulo: 'Biologia Celular', color: 0xFF008C72),
    QuestoesConteudo(titulo: 'Ecologia Geral', color: 0xFF02A676),
    QuestoesConteudo(titulo: 'Histologia', color: 0xFF02A676)
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
    await Future.delayed(const Duration(seconds: 1));
    return lista3;
  }

  static List<Network> posts = [
    Network(
        avatar:
        "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/280601979_321098190011099_2298139029896812518_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=Qn5P0L4qNuQAX-XsOUm&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT_LBkbbJ7_UQ46MIlb2XIbxhuDqh35BR-GiMn4sMBdcKQ&oe=630A298E&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption:
        "In last weeks podcast episode we talked about ways of funding a startup and some innovative ways to utilize open source when building a startup",
        tags: [
          'code',
          'algo',
          'developer',
          'angular',
          'software',
          'python',
          'flutter',
          'developer',
          'angular',
          'software',
          'python',
          'flutter'
        ],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/logo.png',
        date: '09/09/2022',
        likeCount: 856,
        commentCount: 85
    ),
    Network(
        avatar:
        "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Custom line chart with flutter!",
        tags: ['code', 'algo', 'developer'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/logo.png',
        date: '09/09/2022',
        likeCount: 1175,
        commentCount: 98
    ),
    Network(
        avatar:
        "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/295310263_2005323692988879_192442431266284434_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=_OycxPTZAiIAX9Klfo3&tn=mzpEx8VKjXTflDC7&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT9m_Q6Aj_JBs7O-IbeEpOkg5rnaWSzkqYarXN5z2MnNyQ&oe=630AB077&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption:
        "I spent the day trying to deploy the calendar app and I failed",
        tags: ['code', 'algo', 'developer'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/logo.png',
        date: '09/09/2022',
        likeCount: 2458,
        commentCount: 125
    ),
    Network(
        avatar:
        "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/283991312_3302677446628885_7860643733642281108_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=TXgaYREmCxcAX8p7FWO&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT927w1FIJRklH83dVhyxpT5Wr15LiSPPU7cNaQ1LGIUcQ&oe=630B95BA&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption:
        "I have a successful week behind me. I finished this week with all the new features that were included in version 1.1.0, but I also developed a new chart yesterday that will be available in version 1.1.1. The chart will calculate and draw the categories for the currently selected period, where your expense and incomes will be visible. I think this is a very useful chart because it is easy to keep track of how much expense and incomes a category had in the current period.",
        tags: ['code', 'developer'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/logo.png',
        date: '09/09/2022',
        likeCount: 412,
        commentCount: 75
    ),
    Network(
        avatar:
        "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/277325659_148711920961973_1107088744007699452_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=_2KrLYruYPcAX-8jRka&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT-yK9tCfunGBQT04oqmms1OcXJaNekyOVu8r46F2jrYTA&oe=630BD1D0&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption:
        "During this month will be learning about concurrency in Swift. I had already done some exercises but i want to go deeper in this topic. It’s likely that I create a sample app to put into practice all the knowledge so if you are also interested in this just let me know! So maybe I publish the code :)",
        tags: ['code', 'algo', 'developer'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/logo.png',
        date: '09/09/2022',
        likeCount: 135,
        commentCount: 18
    ),
    Network(
        avatar:
        "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/295310263_2005323692988879_192442431266284434_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=_OycxPTZAiIAX9Klfo3&tn=mzpEx8VKjXTflDC7&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT9m_Q6Aj_JBs7O-IbeEpOkg5rnaWSzkqYarXN5z2MnNyQ&oe=630AB077&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Happy coding",
        tags: ['code', 'algo', 'developer', 'weekend', 'cool'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/logo.png',
        date: '09/09/2022',
        likeCount: 4,
        commentCount: 2
    ),
  ];

  static Future<List<Network>> getNetwork() async {
    await Future.delayed(const Duration(seconds: 1));
    return posts;
  }
  
}


