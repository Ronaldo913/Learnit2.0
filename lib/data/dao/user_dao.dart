import 'package:learnit2/data/bd_helper.dart';
import 'package:learnit2/domain/usuario.dart';
import 'package:sqflite/sqflite.dart';

class UserDao {
  Future<void> salvarUser({required Usuario user}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    await db.insert('USER', user.toJson());
  }

  Future<bool> autenticar(
      {required String user, required String password}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * '
        'FROM USER '
        'WHERE email = ? AND senha = ?;';

    final result = await db.rawQuery(sql, [user, password]);

    return result.isNotEmpty;
  }

  listarUsers() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM USER;';
    final result = await db.rawQuery(sql);

    List<Usuario> lista = <Usuario>[];
    for (var json in result) {
      Usuario usuario = Usuario.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }
}
