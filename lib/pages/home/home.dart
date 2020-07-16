import 'package:flutter/material.dart';
import 'package:vitrine_app/pages/home/lista_celulares.dart';

class Home extends StatelessWidget {
  List<String> marcas = [
    'Apple',
    'Google',
    'Samsung',
    'Motorola',
    'Xiaomi',
    'Nokia'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: marcas.length,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Smartphones'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: marcas.map((String marca) => Tab(text: marca)).toList(),
          ),
        ),
        body: TabBarView(
          children: marcas
              .map((String marca) => ListaCelulares(marca: marca))
              .toList(),
        ),
      ),
    );
  }
}
