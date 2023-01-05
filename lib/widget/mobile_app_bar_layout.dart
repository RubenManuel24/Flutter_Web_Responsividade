import 'package:flutter/material.dart';
class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset("imagem/logo.png",
      fit: BoxFit.contain,
      ),
      actions: [
        //Expanded(child: Container()),
        IconButton(
          onPressed: (){}, 
          icon:  Icon(Icons.search),
          ),
          IconButton(
          onPressed: (){}, 
          icon:  Icon(Icons.shopping_cart),
          ),
          IconButton(
          onPressed: (){}, 
          icon:  Icon(Icons.more_vert)
          ),
        
      ],
    );
  }
}
