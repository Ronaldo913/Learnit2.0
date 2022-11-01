import 'package:flutter/cupertino.dart';

import '../pages/sideBar/settings/managerData_page.dart';

class Setting {
  late String title;
  late Widget page;

  Setting({
    required this.title,
    required this.page,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = title;
    data['page'] = page;

    return data;
  }

  Setting.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    page = _gerarPagina(json['page']);
  }

  Widget _gerarPagina(String nomePagina) {
    switch (nomePagina) {
      case 'ManageData()':
        return const ManageData();

      default:
        return const ManageData();
    }
  }
}
