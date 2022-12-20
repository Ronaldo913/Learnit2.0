import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:learnit2/domain/cronograma.dart';
import 'package:http/http.dart';

class TimelineApi {
  String baseUrl = "learnit.herokuapp.com";

  Future<List<Cronograma>> listarCronograma() async {
    Uri url = Uri.http(baseUrl, "/timelines");
    Response response = await http.get(url);

    List<Cronograma> lista = <Cronograma>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      print(result);

      for (var json in result) {
        Cronograma cronogram = Cronograma.fromApiJson(json);
        lista.add(cronogram);
      }
    }

    return lista;
  }
}
