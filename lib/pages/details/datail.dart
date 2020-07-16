import 'package:flutter/material.dart';
import 'package:vitrine_app/models/produto.dart';

class Detail extends StatelessWidget {
  final Produto produto;

  const Detail({Key key, @required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: produto.cor,
      appBar: AppBar(
        backgroundColor: produto.cor,
        title: Text(produto.titulo),
        elevation: 0,
      ),
      body: Hero(
        tag: produto.id,
        child: Image.asset(produto.imagem),
      ),
    );
  }
}
