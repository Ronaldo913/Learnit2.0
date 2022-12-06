import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learnit2/domain/flashcardss.dart';
import 'package:http/http.dart';

class FlashcardApi {
  String baseUrl = "aprendendoapi.ronaldonoberton.repl.co";

  Future<List<Flashcardss>> listarFlashcards() async {
    Uri url = Uri.http(baseUrl, "/flashcards");
    Response response = await http.get(url);

    List<Flashcardss> lista = <Flashcardss>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);

      for (var json in result) {
        Flashcardss flash = Flashcardss.fromApiJson(json);
        lista.add(flash);
      }
    }

    return lista;
  }
}
