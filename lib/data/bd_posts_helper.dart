import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote.db");
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
        "INSERT INTO POSTS (id, url_avatar, author, type, caption, url_post, date, likeCount, commentCount) VALUES (2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTES5uHqJKiVthJ16rmdpbOB6-oSDFNoZEt4xJDb3qD&s', 'Learn It +, Photo', 'Não a extinção!', 'https://ronaldo913.github.io/ImagensPMovel/images/2.jpeg', '07/09/2022', 1175, 98);";
    await db.execute(sql);
  }
}
