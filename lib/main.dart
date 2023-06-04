import 'package:flutter/material.dart';
import 'package:first_app/custom_widget.dart';

void main() {
  const List<Color> colorsList = [
    Color.fromARGB(255, 34, 133, 255),
    Color.fromARGB(255, 0, 18, 41)
  ];
  //Color.fromARGB(255, 0, 18, 41),
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: CustomWidget(colorsList), // CustomWidget heya objet ml class eli khademha fl custom_widget.dart
      ),
    ),
  );
}
