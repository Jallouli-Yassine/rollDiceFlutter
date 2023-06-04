import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}
//custom widget
class GradientContainer extends StatelessWidget{

  @override
  Widget build(context){
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 34, 133, 255),
                Color.fromARGB(255, 0, 18, 41),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text("TEST" ,style: TextStyle(
              color: Colors.white,
              fontSize: 28.5,
            )),
          ),
        );
  }

}