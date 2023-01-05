import 'package:flutter/material.dart';
class LayoutBuilderRegrasDeLayout extends StatefulWidget {
  const LayoutBuilderRegrasDeLayout({super.key});

  @override
  State<LayoutBuilderRegrasDeLayout> createState() => _LayoutBuilderRegrasDeLayoutState();
}

class _LayoutBuilderRegrasDeLayoutState extends State<LayoutBuilderRegrasDeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Regras Layout"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.amber,
        child: LayoutBuilder(
          builder: (context, constraints){
            var tamanho = constraints.maxHeight;
            print("Tamanho do Container :$tamanho ");
             
             if(tamanho == 564){
                return Center(
                  child: Text("Celular"),
                  );
             }
             else if(tamanho == 580){
                return Center(
                  child: Text("Celular maior e Tablet"),
                  );
             }
             
             else{
              return Center(
                  child: Text("Telas maiores"),
                  );
             }
            
          }
          ),
      ),
    );
  }
}
