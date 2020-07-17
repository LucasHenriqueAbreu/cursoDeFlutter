import 'package:flutter/material.dart';
import 'package:vitrine_app/models/produto.dart';
import 'package:vitrine_app/pages/details/datail.dart';

class ItemLista extends StatelessWidget {
  final Produto produto;

  const ItemLista({Key key, @required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Detail(
          produto: produto,
        ),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _criaCardImagem(produto),
          _criaTituloProduto(produto),
          _criaSubTituloProduto(produto),
        ],
      ),
    );
  }

  Widget _criaCardImagem(Produto produto) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: produto.cor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Hero(
          tag: produto.id,
          child: Image.asset(produto.imagem),
        ),
      ),
    );
  }

  Widget _criaTituloProduto(Produto produto) {
    return Padding(
      padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
      child: Text(
        produto.titulo,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  Widget _criaSubTituloProduto(Produto produto) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Text(
        'R\$ ${produto.preco}',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
