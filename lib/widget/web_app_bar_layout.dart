import 'package:flutter/material.dart';
class Web extends StatefulWidget {
  const Web({super.key});

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
         Image.asset("imagem/logo.png",
         fit: BoxFit.contain,
         ),
         Expanded(child: Container()),
          IconButton(
          onPressed: (){}, 
          icon:  Icon(Icons.search),
          ),
          IconButton(
          onPressed: (){}, 
          icon:  Icon(Icons.shopping_cart),
          ),
          SizedBox(width: 10,),
          OutlinedButton(
            onPressed: (){}, 
            child: Text("Cadastrar"),
            style: OutlinedButton.styleFrom(backgroundColor: Colors.amber, primary: Colors.white),
          ),
          SizedBox(width: 10,),
          OutlinedButton(
            onPressed: (){}, 
            child: Text("Entrar"),
            style: OutlinedButton.styleFrom(backgroundColor: Colors.green, primary: Colors.white),
          )
        ],
      ),
    );
  }
}