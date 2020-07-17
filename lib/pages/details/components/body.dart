import 'package:flutter/material.dart';
import 'package:vitrine_app/models/produto.dart';
import 'package:vitrine_app/pages/details/components/produto_titulo_com_imagem.dart';

class Body extends StatelessWidget {
  final Produto produto;

  const Body({Key key, @required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20.0,
                    right: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[Text(produto.descricao)],
                  ),
                ),
                ProdutoTituloComImage(
                  produto: produto,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
