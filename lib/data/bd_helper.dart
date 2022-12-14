import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();

    String path = join(databasePath, "bank00013.db");

    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sqll =
        'create table STORE (id INTEGER PRIMARY KEY, image varchar(500), title varchar(100), price varchar(100), page varchar(100));';
    await db.execute(sqll);

    sqll =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (1, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sqll);

    sqll =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (2, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sqll);

    sqll =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (3, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sqll);

    sqll =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (4, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sqll);

    sqll =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (5, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sqll);

    sqll =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (6, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sqll);

    sqll =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (7, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sqll);

    sqll =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (8, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sqll);

    String sql =
        'create table POSTS (id INTEGER PRIMARY KEY, url_avatar varchar(500), author varchar(100), type varchar(100), caption varchar(100), url_post varchar(500), date varchar(100), likeCount integer, commentCount integer);';
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Abelhas nos protegem.', 'https://ronaldo913.github.io/ImagensPMovel/images/1.jpeg', '08/09/2022', 856, 85);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'N??o a extin????o!', 'https://ronaldo913.github.io/ImagensPMovel/images/2.jpeg', '07/09/2022', 1175, 98);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Eles s??o muito parceiros!', 'https://ronaldo913.github.io/ImagensPMovel/images/3.jpeg', '06/09/2022', 2458, 125);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'L??mures s??o perigoros :)', 'https://ronaldo913.github.io/ImagensPMovel/images/4.jpeg', '05/09/2022', 412, 75);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Cocoric????', 'https://ronaldo913.github.io/ImagensPMovel/images/5.jpeg', '04/09/2022', 135, 18);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Happy Feet', 'https://ronaldo913.github.io/ImagensPMovel/images/13.jpeg', '03/09/2022', 4, 2);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (7, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'Que pregui??a!', 'https://ronaldo913.github.io/ImagensPMovel/images/6.jpeg', '02/09/2022', 467, 23);";
    await db.execute(sql);

    sql =
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +', 'Photo', 'b????????????????', 'https://ronaldo913.github.io/ImagensPMovel/images/14.jpeg', '01/09/2022', 234, 12);";
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

    String sql1 =
        'create table QUESTCITOLOGIA (id INTEGER PRIMARY KEY, title varchar(2000), a varchar(500), b varchar(500), c varchar(500), d varchar(500), answer varchar(250), color int);';
    await db.execute(sql1);

    sql1 =
        "INSERT INTO QUESTCITOLOGIA (id, title, a, b, c, d, answer, color) VALUES (1, '1) Costuma-se dizer que as c??lulas s??o formadas por membrana, citoplasma e n??cleo. Entretanto, n??o s??o todas as c??lulas que apresentam um n??cleo definido e delimitado por membrana nuclear. Baseando-se nisso, o mais correto seria afirmar que todas as c??lulas possuem membrana, citoplasma e material gen??tico. As c??lulas que apresentam n??cleo definido s??o chamadas de:', 'a) Autotr??ficas', 'b) Heterotr??ficas', 'c) Eucari??ticas', 'd) Procari??ticas', 'c) Eucari??ticas', 0xFF02A676);";
    await db.execute(sql1);

    sql1 =
        "INSERT INTO QUESTCITOLOGIA (id, title, a, b, c, d, answer, color) VALUES (2, '2) A Biologia Celular, ou citologia, ?? a parte da Biologia respons??vel por estudar o funcionamento das c??lulas e suas estruturas. Qual das alternativas abaixo indica corretamente o nome do pesquisador que denominou essas estruturas funcionais dos seres vivos de c??lulas?', 'a) Theodor Schwann', 'b) Robert Hooke', 'c) Rudolf Virchow', 'd) Walther Flemming', 'b) Robert Hooke', 0xFF008C72);";
    await db.execute(sql1);

    sql1 =
        "INSERT INTO QUESTCITOLOGIA (id, title, a, b, c, d, answer, color) VALUES (3, '3) A Teoria Celular pode ser resumida, atualmente, em tr??s pontos principais. Analise e marque a alternativa que n??o apresenta uma afirma????o relacionada com essa teoria.', 'a) Todos os seres vivos s??o formadas por uma ou mais c??lulas', 'b) Todas as c??lulas s??o formadas por membrana, citoplasma e n??cleo', 'c) As c??lulas s??o as unidades funcionais dos organismos vivos', 'd) Uma c??lula s?? pode originar-se de outra existente', 'Letra B. N??o se pode afirmar que todas as c??lulas possuem n??cleo, pois as procariontes n??o possuem material gen??tico delimitado por membrana nuclear.', 0xFF007369);";
    await db.execute(sql1);

    sql1 =
        "INSERT INTO QUESTCITOLOGIA (id, title, a, b, c, d, answer, color) VALUES (4, '4) Analise atentamente as alternativas seguintes e marque aquela que indica a fun????o das mitoc??ndrias.', 'a) Realizam a respira????o celular', 'b) Auxiliam na s??ntese de prote??nas nas c??lulas', 'c) Respons??veis pela digest??o intracelular', 'd) Realizam a fotoss??ntese', 'a) Realizam a respira????o celular', 0xFF005A5B);";
    await db.execute(sql1);

    ///////////////////////////////////////////////

    String sql3 =
        'create table ABOUT (id INTEGER PRIMARY KEY, title varchar(100), image varchar(500), text varchar(500));';
    await db.execute(sql3);

    sql3 =
        "INSERT INTO ABOUT (id, text, title, image) VALUES (1, 'Learn It + ?? um aplicativo de estudos que ajuda os estudantes a ter uma melhor compreens??o da disciplina de biologia. Nele, cont??m explica????es de cada conte??do, seja ele escrito ou por v??deo. Junto aos conte??dos vem exerc??cios que devem ser resolvidas para uma melhor fixa????o do seu aprendizado. Al??m disso, o app conta com uma parte premium, a qual quem assinar ter?? regalias e direitos a outros servi??os como mais quest??es, por exemplo. Al??m do mais, o Learn conta com uma rede social pr??pria onde os usu??rios podem interagir entre eles nas diversas postagens em seu chat e e que tamb??m conta com status(mas tudo conforme as regras). Pensando de uma forma diferente e menos cansativa de ensino, o aplicativo tem formas de ensino atrav??s de quiz, flashcards e muitos mais.', 'Sobre n??s', 'https://ronaldo913.github.io/ImagensPMovel/images/logo.png');";
    await db.execute(sql3);

    sql3 =
        "INSERT INTO ABOUT (id, text, title, image) VALUES (2, 'Learn It + ?? um aplicativo de estudos que ajuda com muito orgulho os estudantes em sua jornada! ?? com muito prazer e alegria que o Learnit+ esta semana est?? completando 3 bimestres! Venha comemorar com a gente e aproveite as promo????es!', 'Anivers??rio', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxlRvUK3BiBxUdqm9YrMJ7CDhsMmDnC0NkpQ&usqp=CAU');";
    await db.execute(sql3);

    ///////////////////////////////////////////////

    String sql4 =
        'create table USER (cpf INTEGER PRIMARY KEY, nome varchar(500), email varchar(100), username varchar(100), password varchar(100), sobrenome varchar(500), celular varchar(100), nascimento varchar(10));';
    await db.execute(sql4);

    sql4 =
        "INSERT INTO USER (cpf, nome, email, username, password, sobrenome, celular, nascimento) VALUES (12345678901, 'Tarsis', 'tarsis@email.com', 'tarsis123@email.com', 'tarsis123', 'Marinho', '82912345678', '01/01/1970');";
    await db.execute(sql4);

    ///////////////////////////////////////////////

    String sql5 =
        'create table CONTEUDO (paragrafo1 varchar(2000),paragrafo2 varchar(2000), titulo2 varchar(100), subtitulo varchar(100), paragrafo3 varchar(2000),subtitulo2 varchar(100), paragrafo4 varchar(2000), titulo3 varchar (100), paragrafo5 varchar (2000), subtitulo3 varchar (100), paragrafo6 varchar (2000), subtitulo4 varchar(100), paragrafo7  varchar (2000), paragrafo8 varchar (2000), subtitulo5 varchar (200), paragrafo9 varchar (2000), espaco1 varchar (2), imagem varchar (2000), espaco2 varchar (2));';
    await db.execute(sql5);

    sql5 =
        "INSERT INTO CONTEUDO(paragrafo1, paragrafo2, titulo2, subtitulo, paragrafo3, subtitulo2, paragrafo4, titulo3, paragrafo5, subtitulo3, paragrafo6, subtitulo4, paragrafo7, paragrafo8, subtitulo5 ,  paragrafo9, espaco1, imagem, espaco2) VALUES ('A citologia ?? onde as c??lulas s??o estudadas. A citologia passou a desenvolver-se como ci??ncia em 1663, quando Robert Hooke cortou um peda??o de corti??a e observou ao microsc??pio.', 'Gra??as ao desenvolvimento da microscopia surgiu a teoria celular, onde h?? postulados importantes para o ramo da citoligia, como: Todos os seres vivos s??o constitu??dos por c??lulas, As atividades essenciais que caracterizam a vida ocorrem no interior das c??lulas, Novas c??lulas se formam pela divis??o de c??lulas preexistentes atrav??s da divis??o celular, A c??lula ?? a menor unidade da vida.','TIPOS DE C??LULAS','PROCARIONTES', 'Esta tem como sua principal caracter??stica a ausencia da carioteca, assim sendo, o n??cleo dessa c??lula n??o ?? individualizado. ?? importante destacar que as c??lulas procariontes s??o as c??lulas mais primitivas e que possuem estruturas celulares mais simples. Na reprodu????o as c??lulas procariontes n??o se reproduzem por mitose. Exemplo de c??lula procarionte: bact??rias.', 'EUCARIONTES', 'Tais c??lulas s??o mais complaxas do que as procariontes. Ao contr??rio das procariontes, possuem carioteca individualizando o n??cleo e tamb??m possuem v??rios tipos de organelas. Exemplos de c??lulas eucariontes: c??lulas animais, c??lulas vegetais','PARTES DA C??LULA', 'As c??lulas eucariontes possuem partes morfol??gicas distintas. Suas principais partes s??o: membrana plasm??tica, citoplasma e n??cleo celular.', 'MEMBRANA PLASM??TICA', 'Tamb??m conhecida como membrana celular. Trata-se de uma estrutura fina e porosa. Sua fun????o ?? proteger as estruturas celulares no momento em que serve de envolt??rio para todas as c??lulas. Ela atua como um filtro onde meio que decide o que poder?? entrar, possibilitando a entrada de subst??ncias pequenas e impedindo ou dificultando a passagem de subst??ncias de grande porte, esse processo ?? nomeado de Permeabilidade Seletiva.', 'CITOPLASMA', 'No citoplasma ser?? encotradas organelas celulares, onde ?? preenchido por uma matriz viscosa e semitransparente, o hialoplasma ou citosol. As organelas s??o pequenos ??rg??os da c??lula. Cada organela desempenha uma fun????o distinta.', 'Organelas celulares: Mitoc??ndrias(realiza a respira????o celular, que produz a maior parte da energia utilizada nas fun????es celulares), Ret??culo Endoplasm??tico(h?? 2 tipos de ret??culo endoplasm??tico, o liso e o rugoso), Complexo de Golgi (principais fun????es do complexo de golgi s??o s??o modificar, armazenar e exportar prote??nas sintetizadas no ret??culo endoplasm??tico rugoso. Ele tamb??m origina os lisossomos e os acrossomos dos espermatozoides), Lisossomos (respons??veis pela digest??o intracelular. Essas organelas atuam como sacos de enzimas digestivas, digerindo nutrientes e destruindo subst??ncias n??o desejadas), Ribossomos (auxiliar a s??ntese de prote??nas nas c??lulas), Peroxissomos (a fun????o dos peroxissomos ?? a oxida????o de ??cidos graxos para a s??ntese de colesterol e respira????o celular).', 'N??CLEO CELULAR','Nele ?? onde se encontra o DNA, o material gen??tico do organismo. No n??cleo ocorre a divis??o celular, esse processo ?? extremamente importante para o crescimento e reprodu????o das c??lulas.', ' ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVsq0ESSVKM86Va0uG3y7PUDYSevpuNb1KmQ&usqp=CAU', ' ');";
    await db.execute(sql5);

    ////////////////////////////

    String sql6 =
        'create table FLASHCARD (id INTEGER PRIMARY KEY, title varchar(30), color varchar(50), page varchar(50));';
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD(id, title, color, page) VALUES (1, 'Citologia', '0xFF02A676', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD(id, title, color, page) VALUES (2,'Embriologia','0xFF008C72', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (3,'Introdu????o ?? Biologia', '0xFF007369', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (4,'Gen??tica', '0xFF005A5B', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (5,'Biof??sica', '0xFF003840', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (6,'Bot??nica I (Morfologia e Anatomia Vegetal)', '0xFF003840', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (7,'Bot??nica II', '0xFF005A5B', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (8,'Anatomia Humana', '0xFF007369', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (9,'Biologia Celular', '0xFF008C72', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (10,'Ecologia Geral', '0xFF02A676', 'FlashCitologia()');";
    await db.execute(sql6);

    sql6 =
        "INSERT INTO FLASHCARD (id, title, color, page) VALUES (11,'Histologia', '0xFF02A676', 'FlashCitologia()');";
    await db.execute(sql6);

    ////////////////////////////

    String sql7 =
        'create table CONTENT (id INTEGER PRIMARY KEY, title varchar(30), color varchar(50), page varchar(50));';
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (1, 'Citologia', '0xFF02A676', 'Conteudoc()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (2,'Embriologia','0xFF008C72', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT (id, title, color, page) VALUES (3,'Introdu????o ?? Biologia', '0xFF007369', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT (id, title, color, page) VALUES (4,'Gen??tica', '0xFF005A5B', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT (id, title, color, page) VALUES (5,'Biof??sica', '0xFF003840', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (6,'Bot??nica I (Morfologia e Anatomia Vegetal)', '0xFF003840', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (7,'Bot??nica II', '0xFF005A5B', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (8,'Anatomia Humana', '0xFF007369', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (9,'Biologia Celular', '0xFF008C72', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (10,'Ecologia Geral', '0xFF02A676', 'TelaAssuntos()');";
    await db.execute(sql7);

    sql7 =
        "INSERT INTO CONTENT(id, title, color, page) VALUES (11,'Histologia', '0xFF02A676', 'TelaAssuntos()');";
    await db.execute(sql7);

    ////////////////////////////

    String sql8 =
        'create table QUESTS(id INTEGER PRIMARY KEY, title varchar(30), color varchar(50), page varchar(50));';
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (1, 'Citologia', '0xFF02A676', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (2,'Embriologia','0xFF008C72', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (3,'Introdu????o ?? Biologia', '0xFF007369', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (4,'Gen??tica', '0xFF005A5B', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (5,'Biof??sica', '0xFF003840', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (6,'Bot??nica I (Morfologia e Anatomia Vegetal)', '0xFF003840', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (7,'Bot??nica II', '0xFF005A5B', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (8,'Anatomia Humana', '0xFF007369', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (9,'Biologia Celular', '0xFF008C72', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (10,'Ecologia Geral', '0xFF02A676', 'QuestPage()');";
    await db.execute(sql8);

    sql8 =
        "INSERT INTO QUESTS(id, title, color, page) VALUES (11,'Histologia', '0xFF02A676', 'QuestPage()');";
    await db.execute(sql8);

    ///////////////////////////////////////

    String sql9 =
        'create table PACOTES (id INTEGER PRIMARY KEY, imagem varchar(800), redacao integer, titulo varchar(100), desconto integer, numParcelas integer, precoAntigo real, precoAtual real, aula integer, exercicio integer, horas integer, duvida integer);';
    await db.execute(sql9);

    sql9 =
        "INSERT INTO PACOTES (id, imagem, redacao, titulo, desconto, numParcelas, precoAntigo, precoAtual, aula, exercicio, horas, duvida) VALUES (1, 'https://ronaldo913.github.io/ImagensPMovel/images/foco.png', 1, 'Pacote Foco', 10, 6, 19.90, 9.90, 100, 300, 10, 0);";
    await db.execute(sql9);

    sql9 =
        "INSERT INTO PACOTES (id, imagem, redacao, titulo, desconto, numParcelas, precoAntigo, precoAtual, aula, exercicio, horas, duvida) VALUES (2, 'https://ronaldo913.github.io/ImagensPMovel/images/avan%C3%A7ado.png', 3, 'Pacote M??dio', 10, 8, 35.00, 20.00, 150, 500, 15, 1);";
    await db.execute(sql9);

    sql9 =
        "INSERT INTO PACOTES (id, imagem, redacao, titulo, desconto, numParcelas, precoAntigo, precoAtual, aula, exercicio, horas, duvida) VALUES (3, 'https://ronaldo913.github.io/ImagensPMovel/images/learnmed.png', 5, 'Pacote LearnMed', 10, 10, 50.00, 30.00, 200, 500, 20, 3);";
    await db.execute(sql9);

    //////////////////////////////////

    String sql10 =
        'create table FLASHCARDCITOLOGIA (id INTEGER PRIMARY KEY, resposta varchar(100), pergunta varchar(100));';
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (1, 'O que ?? a citologia?', '?? o estudo das c??lulas.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (2, 'Em que ano a citologia passou a ser considerada ci??ncia?', '1663.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (3, 'Quais e quantos s??o os tipos de c??lulas', 'Dois. Eucariontes e procariontes.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (4, 'Em que ano a citologia passou a ser considerada ci??ncia?', '1663.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (5, 'Quais e quantos s??o os tipos de c??lulas', 'Dois. Eucariontes e procariontes.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (6, 'Em que ano a citologia passou a ser considerada ci??ncia?', '1663.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (7, 'Quais e quantos s??o os tipos de c??lulas', 'Dois. Eucariontes e procariontes.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (8, 'Em que ano a citologia passou a ser considerada ci??ncia?', '1663.');";
    await db.execute(sql10);

    sql10 =
        "INSERT INTO FLASHCARDCITOLOGIA (id, resposta, pergunta) VALUES (9, 'Quais e quantos s??o os tipos de c??lulas', 'Dois. Eucariontes e procariontes.');";
    await db.execute(sql10);

    ///////////////////////////////////////

    String sql11 =
        'create table crono (id INTEGER PRIMARY KEY, title varchar(80), hour integer, minute integer, day varchar(50), color varchar(50));';
    await db.execute(sql11);

    sql11 =
        "INSERT INTO crono (id, title, hour, minute, day, color) VALUES (1, 'Estudar Embriologia', 12 , 30, 'Ter??a', '0xFF02A676');";
    await db.execute(sql11);

    sql11 =
        "INSERT INTO crono (id, title, hour, minute, day, color) VALUES (2, 'Estudar Citologia',13 , 45, 'Ter??a', '0xFF008C72');";
    await db.execute(sql11);

    sql11 =
        "INSERT INTO crono (id, title, hour, minute, day, color) VALUES (3, 'Estudar Histologia',14 , 55, 'Ter??a', '0xFF007369');";
    await db.execute(sql11);

    sql11 =
        "INSERT INTO crono (id, title, hour, minute, day, color) VALUES (4, 'Estudar Genetica',15 , 20, 'Ter??a', '0xFF005A5B');";
    await db.execute(sql11);

    ///////////////////////////////

    String sql12 =
        'create table SETTING (id INTEGER PRIMARY KEY, title title(50), page varchar(50), color varchar(50));';
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (1, 'Gerenciar meus dados', 'ManageData()', '0xFF02A676');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (2, 'Dispositivos conectados', 'ManageData()', '0xFF008C72');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (3, 'Mudar senha', 'ManageData()', '0xFF007369');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (4, 'Tema', 'ManageData()', '0xFF005A5B');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (5, 'idioma', 'ManageData()', '0xFF007369');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (6, 'Sistema web', 'ManageData()', '0xFF003840');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (7, 'Pol??tica e privacidade', 'ManageData()', '0xFF005A5B');";
    await db.execute(sql12);

    sql12 =
        "INSERT INTO SETTING (id, title, page, color) VALUES (8, 'Deletar conta', 'ManageData()', '0xFF007369');";
    await db.execute(sql12);
  }
}
