import 'package:learnit2/data/bd_helper.dart';
import 'package:learnit2/domain/store.dart';
import 'package:sqflite/sqflite.dart';

class StoreDao {

  Future<List<Store>> listarStore() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM STORE;';
    final result = await db.rawQuery(sql);

    List<Store> lista = <Store>[];
    for(var json in result){
      print(json);
      Store setting = Store.fromJson(json);
      lista.add(setting);
    }

    return lista;
  }

}