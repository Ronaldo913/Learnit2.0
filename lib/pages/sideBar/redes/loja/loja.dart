import 'package:flutter/material.dart';
import 'package:learnit2/data/dao/store_dao.dart';
import 'package:learnit2/domain/setting.dart';
import 'package:learnit2/data/dao/setting_dao.dart';

import '../../../../domain/store.dart';
import '../../../../widget/store_card.dart';
import '../../../home/about_page.dart';
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
          children: [
            buildContainerPropaganda(context),

            const SizedBox(height: 16),
            buildListView()
          ],
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
            // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     childAspectRatio: 0.38
            // ),
            // itemCount: lista.length,
            // itemBuilder: (BuildContext context, int index) {
            //   return StoreCard(store: lista[index]);
            // },
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

  buildContainerPropaganda(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF015958),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white10,
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://lh3.googleusercontent.com/p/AF1QipNsNNy_vgUx3IPD29uElDD01GD38AiqVK8xWm_6=s680-w680-h510",
                          ),
                          fit: BoxFit.cover)),
                  width: 400,
                  height: 200,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: const Text(
                    'Nossa loja física',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: const Text(
                    'Corre que ta rolando muita promoção',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const AboutPage();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Ir para',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
