import 'package:flutter/material.dart';
import 'package:vitrine_app/models/produto.dart';
import 'package:vitrine_app/pages/details/components/body.dart';

class Detail extends StatelessWidget {
  final Produto produto;

  const Detail({Key key, @required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: produto.cor,
      appBar: _controiAppBar(context),
      body: Body(produto: produto),
    );
  }

  AppBar _controiAppBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: produto.cor,
      elevation: 0,
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
    );
  }
}
