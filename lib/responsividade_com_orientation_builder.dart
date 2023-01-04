import 'package:flutter/material.dart';
class ResponsividadeComOrientationBuilder extends StatefulWidget {
  const ResponsividadeComOrientationBuilder({super.key});

  @override
  State<ResponsividadeComOrientationBuilder> createState() => _ResponsividadeComOrientationBuilderState();
}

class _ResponsividadeComOrientationBuilderState extends State<ResponsividadeComOrientationBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orientação"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation){
           //return Container(
            //child: orientation == Orientation.landscape
             //? Text("LandsCape")
             //: Text("Portrait"),
           //);
           
           return GridView.count(
            crossAxisCount: orientation == Orientation.portrait 
              ? 2
              : 6,
            children: [
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.black,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.cyan,
              ),
              Container(
                color: Colors.indigo,
              ),
              Container(
                color: Colors.teal,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
            );
        }
        )
    );
  }
}