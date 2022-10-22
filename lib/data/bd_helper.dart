import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote19.db");
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'create table POSTS (id INTEGER PRIMARY KEY, url_avatar varchar(500), author varchar(100), type varchar(100), caption varchar(100), url_post varchar(500), date varchar(100), likeCount integer, commentCount integer);';
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Abelhas nos protegem.', 'https://ronaldo913.github.io/ImagensPMovel/images/1.jpeg', '08/09/2022', 856, 85);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Não a extinção!', 'https://ronaldo913.github.io/ImagensPMovel/images/2.jpeg', '07/09/2022', 1175, 98);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Eles são muito parceiros!', 'https://ronaldo913.github.io/ImagensPMovel/images/3.jpeg', '06/09/2022', 2458, 125);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Lêmures são perigoros :)', 'https://ronaldo913.github.io/ImagensPMovel/images/4.jpeg', '05/09/2022', 412, 75);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Cocoricóó', 'https://ronaldo913.github.io/ImagensPMovel/images/5.jpeg', '04/09/2022', 135, 18);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Happy Feet', 'https://ronaldo913.github.io/ImagensPMovel/images/13.jpeg', '03/09/2022', 4, 2);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Que preguiça!', 'https://ronaldo913.github.io/ImagensPMovel/images/6.jpeg', '02/09/2022', 467, 23);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'béééééééé', 'https://ronaldo913.github.io/ImagensPMovel/images/14.jpeg', '01/09/2022', 234, 12);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Simplesmente alpacas.', 'https://ronaldo913.github.io/ImagensPMovel/images/7.jpeg', '30/08/2022', 300, 55);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Sentimentos', 'https://ronaldo913.github.io/ImagensPMovel/images/15.jpeg', '29/08/2022', 234, 34);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (11, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Tartabundas', 'https://ronaldo913.github.io/ImagensPMovel/images/8.jpeg', '28/08/2022', 123, 32);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'doguinho', 'https://ronaldo913.github.io/ImagensPMovel/images/9.jpeg', '17/08/2022', 34, 54);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (13, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Eu sou uma foca!', 'https://ronaldo913.github.io/ImagensPMovel/images/10.jpeg', '16/08/2022', 546, 12);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (14, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'ratinho diferente', 'https://ronaldo913.github.io/ImagensPMovel/images/11.jpeg', '15/08/2022', 613, 49);";
    await db.execute(sql);

    ///////////////////////////////////////////////
    String sql3 =
        'create table ABOUT (id INTEGER PRIMARY KEY, title varchar(100), image varchar(500), text varchar(500));';
    await db.execute(sql3);

    sql3 =
        "INSERT INTO ABOUT (id, text, title, image) VALUES (1, 'Learn It + é um aplicativo de estudos que ajuda os estudantes a ter uma melhor compreensão da disciplina de biologia. Nele, contém explicações de cada conteúdo, seja ele escrito ou por vídeo. Junto aos conteúdos vem exercícios que devem ser resolvidas para uma melhor fixação do seu aprendizado. Além disso, o app conta com uma parte premium, a qual quem assinar terá regalias e direitos a outros serviços como mais questões, por exemplo. Além do mais, o Learn conta com uma rede social própria onde os usuários podem interagir entre eles nas diversas postagens em seu chat e e que também conta com status(mas tudo conforme as regras). Pensando de uma forma diferente e menos cansativa de ensino, o aplicativo tem formas de ensino através de quiz, flashcards e muitos mais.', 'Sobre nós', 'https://ronaldo913.github.io/ImagensPMovel/images/logo.png');";
    await db.execute(sql3);

    String sql4 =
        'create table USER (cpf INTEGER PRIMARY KEY, nome varchar(500), email varchar(100), username varchar(100), password varchar(100), sobrenome varchar(500), celular varchar(100), nascimento varchar(10));';
    await db.execute(sql4);

    sql4 =
    "INSERT INTO USER (cpf, nome, email, username, password, sobrenome, celular, nascimento) VALUES (12345678901, 'Tarsis', 'tarsis@email.com', 'tarsis123@email.com', 'tarsis123', 'Marinho', '82912345678', '01/01/1970');";
    await db.execute(sql4);
  }

  // Future<void> onUpgrade(Database database, int oldVersion, int newVersion) async {
  //   if (oldVersion == 1 && newVersion == 2) {
  //
  //     // String sql4 =
  //     //     'create table USER (cpf INTEGER PRIMARY KEY, nome varchar(500), email varchar(100), username varchar(100), password varchar(100), sobrenome varchar(500), celular varchar(100), nascimento varchar(10));';
  //     // await database.execute(sql4);
  //     //
  //     // sql4 =
  //     // "INSERT INTO USER (cpf, nome, email, username, password, sobrenome, celular, nascimento) VALUES (12345678901, 'Tarsis', 'tarsis@email.com', 'tarsis123@email.com', 'tarsis123', 'Marinho', '82912345678', '01/01/1970');";
  //     // await database.execute(sql4);
  //
  //   }
  // }
}import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote19.db");
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'create table POSTS (id INTEGER PRIMARY KEY, url_avatar varchar(500), author varchar(100), type varchar(100), caption varchar(100), url_post varchar(500), date varchar(100), likeCount integer, commentCount integer);';
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Abelhas nos protegem.', 'https://ronaldo913.github.io/ImagensPMovel/images/1.jpeg', '08/09/2022', 856, 85);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Não a extinção!', 'https://ronaldo913.github.io/ImagensPMovel/images/2.jpeg', '07/09/2022', 1175, 98);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Eles são muito parceiros!', 'https://ronaldo913.github.io/ImagensPMovel/images/3.jpeg', '06/09/2022', 2458, 125);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Lêmures são perigoros :)', 'https://ronaldo913.github.io/ImagensPMovel/images/4.jpeg', '05/09/2022', 412, 75);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Cocoricóó', 'https://ronaldo913.github.io/ImagensPMovel/images/5.jpeg', '04/09/2022', 135, 18);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Happy Feet', 'https://ronaldo913.github.io/ImagensPMovel/images/13.jpeg', '03/09/2022', 4, 2);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Que preguiça!', 'https://ronaldo913.github.io/ImagensPMovel/images/6.jpeg', '02/09/2022', 467, 23);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'béééééééé', 'https://ronaldo913.github.io/ImagensPMovel/images/14.jpeg', '01/09/2022', 234, 12);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Simplesmente alpacas.', 'https://ronaldo913.github.io/ImagensPMovel/images/7.jpeg', '30/08/2022', 300, 55);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Sentimentos', 'https://ronaldo913.github.io/ImagensPMovel/images/15.jpeg', '29/08/2022', 234, 34);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (11, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Tartabundas', 'https://ronaldo913.github.io/ImagensPMovel/images/8.jpeg', '28/08/2022', 123, 32);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'doguinho', 'https://ronaldo913.github.io/ImagensPMovel/images/9.jpeg', '17/08/2022', 34, 54);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (13, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Eu sou uma foca!', 'https://ronaldo913.github.io/ImagensPMovel/images/10.jpeg', '16/08/2022', 546, 12);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (14, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'ratinho diferente', 'https://ronaldo913.github.io/ImagensPMovel/images/11.jpeg', '15/08/2022', 613, 49);";
    await db.execute(sql);

    ///////////////////////////////////////////////
    String sql3 =
        'create table ABOUT (id INTEGER PRIMARY KEY, title varchar(100), image varchar(500), text varchar(500));';
    await db.execute(sql3);

    sql3 =
        "INSERT INTO ABOUT (id, text, title, image) VALUES (1, 'Learn It + é um aplicativo de estudos que ajuda os estudantes a ter uma melhor compreensão da disciplina de biologia. Nele, contém explicações de cada conteúdo, seja ele escrito ou por vídeo. Junto aos conteúdos vem exercícios que devem ser resolvidas para uma melhor fixação do seu aprendizado. Além disso, o app conta com uma parte premium, a qual quem assinar terá regalias e direitos a outros serviços como mais questões, por exemplo. Além do mais, o Learn conta com uma rede social própria onde os usuários podem interagir entre eles nas diversas postagens em seu chat e e que também conta com status(mas tudo conforme as regras). Pensando de uma forma diferente e menos cansativa de ensino, o aplicativo tem formas de ensino através de quiz, flashcards e muitos mais.', 'Sobre nós', 'https://ronaldo913.github.io/ImagensPMovel/images/logo.png');";
    await db.execute(sql3);

    String sql4 =
        'create table USER (cpf INTEGER PRIMARY KEY, nome varchar(500), email varchar(100), username varchar(100), password varchar(100), sobrenome varchar(500), celular varchar(100), nascimento varchar(10));';
    await db.execute(sql4);

    sql4 =
    "INSERT INTO USER (cpf, nome, email, username, password, sobrenome, celular, nascimento) VALUES (12345678901, 'Tarsis', 'tarsis@email.com', 'tarsis123@email.com', 'tarsis123', 'Marinho', '82912345678', '01/01/1970');";
    await db.execute(sql4);
    
    String sql5 =
        'create table CONTEUDO (paragrafo1 varchar(2000),paragrafo2 varchar(2000), titulo2 varchar(100), subtitulo varchar(100), paragrafo3 varchar(2000),subtitulo2 varchar(100), paragrafo4 varchar(2000), titulo3 varchar (100), paragrafo5 varchar (2000), subtitulo3 varchar (100), paragrafo6 varchar (2000), subtitulo4 varchar(100), paragrafo7  varchar (2000), paragrafo8 varchar (2000), subtitulo5 varchar (200), paragrafo9 varchar (2000), espaco1 varchar (2), imagem varchar (2000), espaco2 varchar (2));';
    await db.execute(sql5);

    sql5 =
        "INSERT INTO CONTEUDO(paragrafo1, paragrafo2, titulo2, subtitulo, paragrafo3, subtitulo2, paragrafo4, titulo3, paragrafo5, subtitulo3, paragrafo6, subtitulo4, paragrafo7, paragrafo8, subtitulo5 ,  paragrafo9, espaco1, imagem, espaco2) VALUES ('A citologia é onde as células são estudadas. A citologia passou a desenvolver-se como ciência em 1663, quando Robert Hooke cortou um pedaço de cortiça e observou ao microscópio.', 'Graças ao desenvolvimento da microscopia surgiu a teoria celular, onde há postulados importantes para o ramo da citoligia, como: Todos os seres vivos são constituídos por células, As atividades essenciais que caracterizam a vida ocorrem no interior das células, Novas células se formam pela divisão de células preexistentes através da divisão celular, A célula é a menor unidade da vida.','TIPOS DE CÉLULAS','PROCARIONTES', 'Esta tem como sua principal característica a ausencia da carioteca, assim sendo, o núcleo dessa célula não é individualizado. É importante destacar que as células procariontes são as células mais primitivas e que possuem estruturas celulares mais simples. Na reprodução as células procariontes não se reproduzem por mitose. Exemplo de célula procarionte: bactérias.', 'EUCARIONTES', 'Tais células são mais complaxas do que as procariontes. Ao contrário das procariontes, possuem carioteca individualizando o núcleo e também possuem vários tipos de organelas. Exemplos de células eucariontes: células animais, células vegetais','PARTES DA CÉLULA', 'As células eucariontes possuem partes morfológicas distintas. Suas principais partes são: membrana plasmática, citoplasma e núcleo celular.', 'MEMBRANA PLASMÁTICA', 'Também conhecida como membrana celular. Trata-se de uma estrutura fina e porosa. Sua função é proteger as estruturas celulares no momento em que serve de envoltório para todas as células. Ela atua como um filtro onde meio que decide o que poderá entrar, possibilitando a entrada de substâncias pequenas e impedindo ou dificultando a passagem de substâncias de grande porte, esse processo é nomeado de Permeabilidade Seletiva.', 'CITOPLASMA', 'No citoplasma será encotradas organelas celulares, onde é preenchido por uma matriz viscosa e semitransparente, o hialoplasma ou citosol. As organelas são pequenos órgãos da célula. Cada organela desempenha uma função distinta.', 'Organelas celulares: Mitocôndrias(realiza a respiração celular, que produz a maior parte da energia utilizada nas funções celulares), Retículo Endoplasmático(há 2 tipos de retículo endoplasmático, o liso e o rugoso), Complexo de Golgi (principais funções do complexo de golgi são são modificar, armazenar e exportar proteínas sintetizadas no retículo endoplasmático rugoso. Ele também origina os lisossomos e os acrossomos dos espermatozoides), Lisossomos (responsáveis pela digestão intracelular. Essas organelas atuam como sacos de enzimas digestivas, digerindo nutrientes e destruindo substâncias não desejadas), Ribossomos (auxiliar a síntese de proteínas nas células), Peroxissomos (a função dos peroxissomos é a oxidação de ácidos graxos para a síntese de colesterol e respiração celular).', 'NÚCLEO CELULAR','Nele é onde se encontra o DNA, o material genético do organismo. No núcleo ocorre a divisão celular, esse processo é extremamente importante para o crescimento e reprodução das células.', ' ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVsq0ESSVKM86Va0uG3y7PUDYSevpuNb1KmQ&usqp=CAU', ' ');";
    await db.execute(sql5);
  }

  // Future<void> onUpgrade(Database database, int oldVersion, int newVersion) async {
  //   if (oldVersion == 1 && newVersion == 2) {
  //
  //     // String sql4 =
  //     //     'create table USER (cpf INTEGER PRIMARY KEY, nome varchar(500), email varchar(100), username varchar(100), password varchar(100), sobrenome varchar(500), celular varchar(100), nascimento varchar(10));';
  //     // await database.execute(sql4);
  //     //
  //     // sql4 =
  //     // "INSERT INTO USER (cpf, nome, email, username, password, sobrenome, celular, nascimento) VALUES (12345678901, 'Tarsis', 'tarsis@email.com', 'tarsis123@email.com', 'tarsis123', 'Marinho', '82912345678', '01/01/1970');";
  //     // await database.execute(sql4);
  //
  //   }
  // }
}
