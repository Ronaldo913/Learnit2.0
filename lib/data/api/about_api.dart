import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learnit2/domain/about.dart';
import 'package:http/http.dart';

class AboutApi {
  String baseUrl = "learnit.herokuapp.com";

  Future<List<About>> listarSobre() async {
    Uri url = Uri.http(baseUrl, "/abouts");
    Response response = await http.get(url);

    List<About> lista = <About>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      print(result);

      for (var json in result) {
        About about = About.fromApiJson(json);
        lista.add(about);
      }
    }

    return lista;
  }
}
