import 'package:flutter/material.dart';
import 'package:vitrine_app/models/produto.dart';

class ProdutoTituloComImage extends StatelessWidget {
  final Produto produto;

  const ProdutoTituloComImage({Key key, @required this.produto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            produto.marca.trim(),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            produto.titulo,
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Text(
                'R\$ ${produto.preco}',
                style: Theme.of(context).textTheme.headline4,
              ),
              Expanded(
                child: Hero(
                  tag: produto.id,
                  child: Image.asset(
                    produto.imagem,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
