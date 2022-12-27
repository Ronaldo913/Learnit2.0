import 'package:flutter/material.dart';
import 'package:learnit2/pages/contents/conteudo2_page.dart';
import 'package:learnit2/pages/contents/conteudo3_page.dart';
import 'package:learnit2/pages/contents/conteudo_page.dart';
import 'package:learnit2/pages/questions/quest.dart';
import '../pages/flashcard_contents/citologia_flashcard.dart';

class Store {
  late final String image;
  late final String title;
  late final String price;
  late final Widget page;

  Store({
    required this.image,
    required this.title,
    required this.price,
    required this.page,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['image'] = image;
    data['title'] = title;
    data['price'] = price;
    data['page'] = page;

    return data;
  }

  Store.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    price = json['price'];
    image = json['image'];
    page = _gerarPagina(json['page']);
  }

  Widget _gerarPagina(String nomePagina) {
    switch (nomePagina) {
      case 'Conteudoc()':
        return Conteudoc();

      case 'QuestPage()':
        return QuestPage();

      case 'FlashCitologia()':
        return FlashCitologia();

      default:
        return Conteudoc();
    }
  }
}
