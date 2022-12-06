import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learnit2/domain/network.dart';
import 'package:http/http.dart';

class PublicationApi {
  String baseUrl = "publications.ronaldonoberton.repl.co";

  Future<List<Network>> listarPublications() async {
    Uri url = Uri.http(baseUrl, "/publications");
    Response response = await http.get(url);

    List<Network> lista = <Network>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      print(result);

      for (var json in result) {
        Network publi = Network.fromApiJson(json);
        lista.add(publi);
      }
    }

    return lista;
  }
}
