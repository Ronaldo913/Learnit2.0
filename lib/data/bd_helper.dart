import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote7.db");
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
  }
}
