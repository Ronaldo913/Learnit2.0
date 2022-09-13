import 'package:learnit2/domain/network.dart';
import 'package:learnit2/domain/usuario.dart';
import 'package:learnit2/domain/pacote_estudo.dart';
import 'package:learnit2/domain/questoes_conteudo.dart';
import 'package:learnit2/domain/questoes.dart';
import 'package:learnit2/domain/cronograma.dart';
import 'package:learnit2/pages/questions/quest.dart';
import 'package:learnit2/pages/contents/conteudo_page.dart';

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

  static List<QuestoesConteudo> listaquest = [
    QuestoesConteudo(titulo: 'Citologia', color: 0xFF02A676, page: QuestPage()),
    QuestoesConteudo(
        titulo: 'Embriologia', color: 0xFF008C72, page: QuestPage()),
    QuestoesConteudo(
        titulo: 'Introdução à Biologia', color: 0xFF007369, page: QuestPage()),
    QuestoesConteudo(titulo: 'Genética', color: 0xFF005A5B, page: QuestPage()),
    QuestoesConteudo(titulo: 'Biofísica', color: 0xFF003840, page: QuestPage()),
    QuestoesConteudo(
        titulo: 'Botânica I (Morfologia e Anatomia Vegetal)',
        color: 0xFF003840,
        page: QuestPage()),
    QuestoesConteudo(
        titulo: 'Botânica II', color: 0xFF005A5B, page: QuestPage()),
    QuestoesConteudo(
        titulo: 'Anatomia Humana', color: 0xFF007369, page: QuestPage()),
    QuestoesConteudo(
        titulo: 'Biologia Celular', color: 0xFF008C72, page: QuestPage()),
    QuestoesConteudo(
        titulo: 'Ecologia Geral', color: 0xFF02A676, page: QuestPage()),
    QuestoesConteudo(
        titulo: 'Histologia', color: 0xFF02A676, page: const QuestPage())
  ];

  static Future<List<QuestoesConteudo>> getListaQuest() async {
    await Future.delayed(const Duration(seconds: 1));
    return listaquest;
  }

  static List<QuestoesConteudo> listcontents = [
    QuestoesConteudo(
        titulo: 'Citologia', color: 0xFF02A676, page: TelaAssuntos()),
    QuestoesConteudo(
        titulo: 'Embriologia', color: 0xFF008C72, page: TelaAssuntos()),
    QuestoesConteudo(
        titulo: 'Introdução à Biologia',
        color: 0xFF007369,
        page: TelaAssuntos()),
    QuestoesConteudo(
        titulo: 'Genética', color: 0xFF005A5B, page: TelaAssuntos()),
    QuestoesConteudo(
        titulo: 'Biofísica', color: 0xFF003840, page: TelaAssuntos()),
    QuestoesConteudo(
        titulo: 'Botânica I (Morfologia e Anatomia Vegetal)',
        color: 0xFF003840,
        page: TelaAssuntos()),
    QuestoesConteudo(
        titulo: 'Botânica II', color: 0xFF005A5B, page: TelaAssuntos()),
    QuestoesConteudo(
        titulo: 'Anatomia Humana', color: 0xFF007369, page: TelaAssuntos()),
    QuestoesConteudo(
        titulo: 'Biologia Celular', color: 0xFF008C72, page: TelaAssuntos()),
    QuestoesConteudo(
        titulo: 'Ecologia Geral', color: 0xFF02A676, page: TelaAssuntos()),
    QuestoesConteudo(
        titulo: 'Histologia', color: 0xFF02A676, page: TelaAssuntos())
  ];

  static Future<List<QuestoesConteudo>> getListaConstents() async {
    await Future.delayed(const Duration(seconds: 1));
    return listcontents;
  }

  static List<Questoes> lista3 = [
    Questoes(
      enunciado:
          '1) Costuma-se dizer que as células são formadas por membrana, citoplasma e núcleo. Entretanto, não são todas as células que apresentam um núcleo definido e delimitado por membrana nuclear. Baseando-se nisso, o mais correto seria afirmar que todas as células possuem membrana, citoplasma e material genético. As células que apresentam núcleo definido são chamadas de:',
      a: 'a) Autotróficas',
      b: 'b) Heterotróficas',
      c: 'c) Eucarióticas',
      d: 'd) Procarióticas',
      resp: 'c) Eucarióticas',
      color: 0xFF02A676,
    ),
    Questoes(
      enunciado:
          '2) A Biologia Celular, ou citologia, é a parte da Biologia responsável por estudar o funcionamento das células e suas estruturas. Qual das alternativas abaixo indica corretamente o nome do pesquisador que denominou essas estruturas funcionais dos seres vivos de células?',
      a: 'a) Theodor Schwann',
      b: 'b) Robert Hooke',
      c: 'c) Rudolf Virchow',
      d: 'd) Walther Flemming',
      resp: 'b) Robert Hooke',
      color: 0xFF008C72,
    ),
    Questoes(
      enunciado:
          '3) A Teoria Celular pode ser resumida, atualmente, em três pontos principais. Analise e marque a alternativa que não apresenta uma afirmação relacionada com essa teoria.',
      a: 'a) Todos os seres vivos são formadas por uma ou mais células',
      b: 'b) Todas as células são formadas por membrana, citoplasma e núcleo',
      c: 'c) As células são as unidades funcionais dos organismos vivos',
      d: 'd) Uma célula só pode originar-se de outra existente',
      resp:
          'Letra B. Não se pode afirmar que todas as células possuem núcleo, pois as procariontes não possuem material genético delimitado por membrana nuclear.',
      color: 0xFF007369,
    ),
    Questoes(
      enunciado:
          '4) Analise atentamente as alternativas seguintes e marque aquela que indica a função das mitocôndrias.',
      a: 'a) Realizam a respiração celular',
      b: 'b) Auxiliam na síntese de proteínas nas células',
      c: 'c) Responsáveis pela digestão intracelular',
      d: 'd) Realizam a fotossíntese',
      resp: 'a) Realizam a respiração celular',
      color: 0xFF005A5B,
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
        caption: "Abelhas nos protegem.",
        tags: [
          'abelhas',
          'protetora',
          'polen',
          'pequena',
          'fofa',
          'beemovie',
          'mel'
        ],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/1.jpeg',
        date: '08/09/2022',
        likeCount: 856,
        commentCount: 85),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Não a extinção!",
        tags: ['rinoceronte', 'grande', 'marfim'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/2.jpeg',
        date: '07/09/2022',
        likeCount: 1175,
        commentCount: 98),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/295310263_2005323692988879_192442431266284434_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=_OycxPTZAiIAX9Klfo3&tn=mzpEx8VKjXTflDC7&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT9m_Q6Aj_JBs7O-IbeEpOkg5rnaWSzkqYarXN5z2MnNyQ&oe=630AB077&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Eles são muito parceiros!",
        tags: ['marfim', 'elefante', 'carinhosos', "dumbo"],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/3.jpeg',
        date: '06/09/2022',
        likeCount: 2458,
        commentCount: 125),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/283991312_3302677446628885_7860643733642281108_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=TXgaYREmCxcAX8p7FWO&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT927w1FIJRklH83dVhyxpT5Wr15LiSPPU7cNaQ1LGIUcQ&oe=630B95BA&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Lêmures são perigoros :)",
        tags: ['perigo', 'enganadores'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/4.jpeg',
        date: '05/09/2022',
        likeCount: 412,
        commentCount: 75),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/277325659_148711920961973_1107088744007699452_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=_2KrLYruYPcAX-8jRka&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT-yK9tCfunGBQT04oqmms1OcXJaNekyOVu8r46F2jrYTA&oe=630BD1D0&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Cocoricóó",
        tags: ['Despertar', 'canto', 'galos'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/5.jpeg',
        date: '04/09/2022',
        likeCount: 135,
        commentCount: 18),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/295310263_2005323692988879_192442431266284434_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=_OycxPTZAiIAX9Klfo3&tn=mzpEx8VKjXTflDC7&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT9m_Q6Aj_JBs7O-IbeEpOkg5rnaWSzkqYarXN5z2MnNyQ&oe=630AB077&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Happy Feet",
        tags: ['happyfeetofilme', 'ave', 'ovos', 'antártida', 'surfe'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/13.jpeg',
        date: '03/09/2022',
        likeCount: 4,
        commentCount: 2),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Que preguiça!",
        tags: ['sono', 'preguicinha', 'fofura'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/6.jpeg',
        date: '02/09/2022',
        likeCount: 1175,
        commentCount: 98),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "béééééééé",
        tags: ['ovelhas', 'lã', 'língua'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/14.jpeg',
        date: '01/09/2022',
        likeCount: 1175,
        commentCount: 98),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Simplesmente alpacas.',
        caption: "Custom line chart with flutter!",
        tags: ['alpacas', 'naobrasil', 'dentes'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/7.jpeg',
        date: '30/08/2022',
        likeCount: 1175,
        commentCount: 98),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Sentimentos",
        tags: ['elefantes', 'carinho', 'família'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/15.jpeg',
        date: '29/08/2022',
        likeCount: 1175,
        commentCount: 98),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Tartabundas",
        tags: ['respirar', 'bundinha', 'tartarugas'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/8.jpeg',
        date: '28/08/2022',
        likeCount: 1175,
        commentCount: 98),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "doguinho",
        tags: ['paixão', 'melhioramigo', 'carinho'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/9.jpeg',
        date: '27/08/2022',
        likeCount: 1175,
        commentCount: 98),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "Eu sou uma foca!",
        tags: ['lucasneto', 'felipe', 'dormir'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/10.jpeg',
        date: '26/08/2022',
        likeCount: 1175,
        commentCount: 98),
    Network(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Learn It +",
        type: 'Photo',
        caption: "ratinho diferente",
        tags: ['hamster', 'rato', 'dentes'],
        photo: 'https://ronaldo913.github.io/ImagensPMovel/images/11.jpeg',
        date: '25/08/2022',
        likeCount: 1175,
        commentCount: 98),
  ];

  static Future<List<Network>> getNetwork() async {
    await Future.delayed(const Duration(seconds: 1));
    return posts;
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
