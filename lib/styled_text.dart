import 'package:flutter/material.dart';

class CustomStyleText extends StatelessWidget {
   //CustomStyleText(nvText,{super.key}):text = nvText;
   /* OR */  CustomStyleText(this.text,{super.key});

  //attributes :
  final String text;

  @override
  Widget build(context) {
    return  Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28.5,
        ));
  }
}
