import 'package:flutter/material.dart';
import 'package:learnit2/data/dao/store_dao.dart';
import 'package:learnit2/domain/setting.dart';
import 'package:learnit2/data/dao/setting_dao.dart';

import '../../../../domain/store.dart';
import '../../../../widget/store_card.dart';
import '../../../home/home_page.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  Future<List<Store>> lista = StoreDao().listarStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [const SizedBox(height: 16), buildListView()],
        ),
      ),
    );
  }

  void goHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ),
    );
  }

  buildListView() {
    return FutureBuilder<List<Store>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Store> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return StoreCard(store: lista[index]);
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
