import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learnit2/domain/pacote_estudo.dart';
import 'package:http/http.dart';

class PacotesApi {
  String baseUrl = "learnit.herokuapp.com";

  Future<List<PacoteEstudo>> listarPacotes() async {
    Uri url = Uri.http(baseUrl, "/packages");
    Response response = await http.get(url);

    List<PacoteEstudo> lista = <PacoteEstudo>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      print(result);

      for (var json in result) {
        PacoteEstudo pack = PacoteEstudo.fromApiJson(json);
        lista.add(pack);
      }
    }

    return lista;
  }
}
