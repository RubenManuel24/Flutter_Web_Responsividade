import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web/widget/mobile_app_bar_layout.dart';
import 'package:flutter_web/widget/web_app_bar_layout.dart';
class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
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
          );
      }
      );
  }
}