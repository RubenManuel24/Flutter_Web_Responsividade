import 'package:flutter/material.dart';
class ResponsividadeRowEColumnUsandoExpanded extends StatefulWidget {
  const ResponsividadeRowEColumnUsandoExpanded({super.key});

  @override
  State<ResponsividadeRowEColumnUsandoExpanded> createState() => _ResponsividadeRowEColumnUsandoExpandedState();
}

class _ResponsividadeRowEColumnUsandoExpandedState extends State<ResponsividadeRowEColumnUsandoExpanded> {
  @override
  Widget build(BuildContext context) {
   
    var responsividadeHeigt = MediaQuery.of(context).size.height;
    var responsividadeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsividade Row Column"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.purple,
          ),
            ),
          Expanded(
            flex:2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amber,
                  )
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  )
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  )
                ),
                Expanded(
                  child: Container(
                    color: Colors.indigogi,
                  )
                )
              ]
           ,)
         ),
         Expanded(
          flex:2,
            child: Container(
              color: Colors.red,
          ),
         )
       ],
      ),
    );
  }
}