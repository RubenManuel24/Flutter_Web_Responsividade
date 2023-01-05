import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web/itens_imagem.dart';
import 'package:flutter_web/widget/mobile_app_bar_layout.dart';
import 'package:flutter_web/widget/web_app_bar_layout.dart';
class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  
  var numTabela;
  _retornarTabelasGried(var largura){
   
   numTabela = 2;

   if(largura <= 600){
     numTabela = 2;
   }
   else if(largura <= 900){
     numTabela = 4;
   }
   else{
    numTabela = 8;
   }
   
   return numTabela;

  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
         
          var largura = constraints.maxWidth;
          var heightAppBar = AppBar().preferredSize.height;

          return Scaffold(
            appBar: largura < 600 
              ? PreferredSize(
                child: Mobile(), 
                preferredSize:Size(largura, heightAppBar ) )
              : PreferredSize(
                child: Web(), 
                preferredSize:Size(largura, heightAppBar ) ),
           body: Padding(padding: EdgeInsets.all(16),
                 child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: _retornarTabelasGried(largura),
                    children: [
                      ItensImagem(
                        imagem: "p1.jpg",
                        nome: "Microonda",
                        preco: "100.000,00",
                      ),
                      ItensImagem(
                        imagem: "p2.jpg",
                        nome: "Material do carro",
                        preco: "200.000,00",
                      ),
                      ItensImagem(
                        imagem: "p3.jpg",
                        nome: "Telefone Preto",
                        preco: "50.000,00",
                      ),
                      ItensImagem(
                        imagem: "p4.jpg",
                        nome: "Telefone",
                        preco: "70.000,00",
                      ),
                      ItensImagem(
                        imagem: "p5.jpg",
                        nome: "Telefone Velmelho",
                        preco: "70.000,00",
                      ),
                      ItensImagem(
                        imagem: "p6.jpg",
                        nome: "Telefone Branco",
                        preco: "70.000,00",
                      ),
                       ItensImagem(
                        imagem: "p1.jpg",
                        nome: "Microonda",
                        preco: "100.000,00",
                      ),
                      ItensImagem(
                        imagem: "p2.jpg",
                        nome: "Material do carro",
                        preco: "200.000,00",
                      ),
                      
                    ],
                 ),
           ),
          );
      }
      );
  }
}