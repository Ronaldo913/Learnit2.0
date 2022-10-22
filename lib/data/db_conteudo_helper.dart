/*import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "conteudo.db");
    Database database = await openDatabase(
      path,
      version: 2,
      onCreate: onCreate,
      //onUpgrade: onUpgrade,
    );

    print(path);
    return database;
  }


  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'create table CONTEUDO ('
        'paragrafo1 varchar(2000), '
        'paragrafo2 varchar(2000),'
        ' titulo2 varchar(100), '
        'subtitulo varchar(100),'
        ' paragrafo3 varchar(2000), '
        'subtitulo2 varchar(100),'
        ' paragrafo4 varchar(2000), '
        'titulo3 varchar (100), '
        'paragrafo5 varchar (2000), '
        'subtitulo3 varchar (100), '
        'paragrafo6 varchar (2000),'
        ' subtitulo4 varchar(100), '
        'paragrafo7  varchar (2000),'
        'paragrafo8 varchar (2000),'
        'paragrafo9 varchar (2000),'
        'espaco1 varchar (2),'
        'imagem varchar (2000),'
        'espaco2 varchar (2));';
    await db.execute(sql);

    sql =
    "INSERT INTO PACOTE (paragrafo1, paragrafo2, titulo2, subtitulo, paragrafo3, subtitulo2, paragrafo4, titulo3, paragrafo5, subtitulo3, paragrafo6,"
        " subtitulo4, paragrafo7, paragrafo8, paragrafo9, espaco1, imagem, espaco2)"
        " VALUES ('A citologia é onde as células são estudadas. A citologia passou a desenvolver-se como ciência em 1663, quando Robert Hooke cortou um pedaço de cortiça e observou ao microscópio.',"
        " 'Graças ao desenvolvimento da microscopia surgiu a teoria celular, onde há postulados importantes para o ramo da citoligia, como: Todos os seres vivos são constituídos por células, As atividades essenciais que caracterizam a vida ocorrem no interior das células, Novas células se formam pela divisão de células preexistentes através da divisão celular, A célula é a menor unidade da vida.',"
        " 'TIPOS DE CÉLULAS',"
        " 'PROCARIONTES', 'Esta tem como sua principal característica a ausencia da carioteca, assim sendo, o núcleo dessa célula não é individualizado. É importante destacar que as células procariontes são as células mais primitivas e que possuem estruturas celulares mais simples. Na reprodução as células procariontes não se reproduzem por mitose. Exemplo de célula procarionte: bactérias.', 'EUCARIONTES', 'Tais células são mais complaxas do que as procariontes. Ao contrário das procariontes, possuem carioteca individualizando o núcleo e também possuem vários tipos de organelas. Exemplos de células eucariontes: células animais, células vegetais',"
        " 'PARTES DA CÉLULA', 'As células eucariontes possuem partes morfológicas distintas. Suas principais partes são: membrana plasmática, citoplasma e núcleo celular.', 'MEMBRANA PLASMÁTICA', 'Também conhecida como membrana celular. Trata-se de uma estrutura fina e porosa. Sua função é proteger as estruturas celulares no momento em que serve de envoltório para todas as células. Ela atua como um filtro onde meio que decide o que poderá entrar, possibilitando a entrada de substâncias pequenas e impedindo ou dificultando a passagem de substâncias de grande porte, esse processo é nomeado de Permeabilidade Seletiva.', 'CITOPLASMA', 'No citoplasma será encotradas organelas celulares, onde é preenchido por uma matriz viscosa e semitransparente, o hialoplasma ou citosol. As organelas são pequenos órgãos da célula. Cada organela desempenha uma função distinta.', 'Organelas celulares: Mitocôndrias(realiza a respiração celular, que produz a maior parte da energia utilizada nas funções celulares), Retículo Endoplasmático(há 2 tipos de retículo endoplasmático, o liso e o rugoso), Complexo de Golgi (principais funções do complexo de golgi são são modificar, armazenar e exportar proteínas sintetizadas no retículo endoplasmático rugoso. Ele também origina os lisossomos e os acrossomos dos espermatozoides), Lisossomos (responsáveis pela digestão intracelular. Essas organelas atuam como sacos de enzimas digestivas, digerindo nutrientes e destruindo substâncias não desejadas), Ribossomos (auxiliar a síntese de proteínas nas células), Peroxissomos (a função dos peroxissomos é a oxidação de ácidos graxos para a síntese de colesterol e respiração celular).', 'NÚCLEO CELULAR','Nele é onde se encontra o DNA, o material genético do organismo. No núcleo ocorre a divisão celular, esse processo é extremamente importante para o crescimento e reprodução das células.', ' ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVsq0ESSVKM86Va0uG3y7PUDYSevpuNb1KmQ&usqp=CAU', ' ');";
    await db.execute(sql);
    print(sql);
    //sql =
    //"INSERT INTO PACOTE (id, head, url_image, city, title, transport, validity, old_price, current_price, nights, discount, persons, free_cancellation) VALUES (2, 'Pacote Cancún', 'https://blogmaladeviagem.com.br/wp-content/uploads/2016/11/Blog-Mala-de-Viagem-cancun.jpg', 'CANCÚN, MEX', 'Pacote Cancún 2021', 'Aéreo + Transfer Grátis', '01 Nov 2021 a 31 Dez 2021', '6.500', '3.854', 5, 30, 1, 1);";
    //await db.execute(sql);
  }

  /*Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if(oldVersion == 1 && newVersion == 2){
      String sql = "CREATE TABLE user (username varchar(100) PRIMARY KEY, password varchar(100))";
      await db.execute(sql);

      sql = "INSERT INTO user (username, password) VALUES ('joao@gmail.com', '123456')";
      await db.execute(sql);
    }
  }*/
}
*/
