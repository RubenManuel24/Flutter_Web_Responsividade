import 'package:flutter/material.dart';
class ItensImagem extends StatelessWidget {

  var imagem;
  var nome;
  var preco;

  ItensImagem({
      this.imagem ,
      this.nome,
      this.preco
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset("imagem/${this.imagem}",
             fit: BoxFit.contain,
             ),
          ),
          Expanded(
            flex: 1,
            child: Text(this.nome)
          ),
          Expanded(
            flex: 1,
            child: Text(
              "Kz ${this.preco}",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold
              ),
            )
          )
        ],
      ),
    );
  }
}