import 'package:flutter/material.dart';
class ResponsiidadeMediaQuery extends StatefulWidget {
  const ResponsiidadeMediaQuery({super.key});

  @override
  State<ResponsiidadeMediaQuery> createState() => _ResponsiidadeMediaQueryState();
}

class _ResponsiidadeMediaQueryState extends State<ResponsiidadeMediaQuery> {

  @override
  Widget build(BuildContext context) {

    var responsividadeHeigt = MediaQuery.of(context).size.height;
    var responsividadeWidth = MediaQuery.of(context).size.width * 0.25;
    var responsiidadeAppBar = AppBar().preferredSize.height;
    var responsiidadeBarraStatus = MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(
          title: Text("Responsividade"),
      ),
      body: Row(
        children: [
          Container(
            height: responsividadeHeigt - responsiidadeAppBar ,
            width: responsividadeWidth,
            color: Colors.amber,

          ),
          Container(
            height: responsividadeHeigt - responsiidadeAppBar,
            width: responsividadeWidth,
            color: Colors.red,

          ),
          Container(
            height: responsividadeHeigt - responsiidadeAppBar,
            width: responsividadeWidth,
            color: Colors.black,

          ),
          Container(
            height: responsividadeHeigt - responsiidadeAppBar,
            width: responsividadeWidth,
            color: Colors.blue

          )
        ]
        ),
        
    );
  }
}
