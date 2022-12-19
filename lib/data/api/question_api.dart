import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learnit2/domain/questoes.dart';
import 'package:http/http.dart';

class QuestionApi {
  String baseUrl = "learnit.herokuapp.com";

  Future<List<Questoes>> listarQuestions() async {
    Uri url = Uri.http(baseUrl, "/questions");
    Response response = await http.get(url);

    List<Questoes> lista = <Questoes>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);

      for (var json in result) {
        Questoes quest = Questoes.fromApiJson(json);
        lista.add(quest);
      }
    }

    return lista;
  }
}
