// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

/*
  Color.fromARGB(255, 34, 133, 255),
  Color.fromARGB(255, 0, 18, 41),
*/
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class CustomWidget extends StatelessWidget {
  // CustomWidget({cKey}):super(key: cKey);
  /* OR : */ const CustomWidget(this.ListOfcolors, {super.key});
  final List<Color> ListOfcolors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: ListOfcolors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:const Center(
          child:DiceRoller(),
      ),
    );
  }
}
