// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

/*
  Color.fromARGB(255, 34, 133, 255),
  Color.fromARGB(255, 0, 18, 41),
*/
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
var text = "asslemaaaaaaaaaaa";

void rollDice() {}

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
      child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        CustomStyleText(text), // Your existing CustomStyleText widget
        const SizedBox(height: 100),
        Image.asset(
          'assets/images/dice-1.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 50),
            foregroundColor: Colors.white,
            textStyle:const TextStyle(
              fontSize: 28,
            ) ),
          child:const Text('ROLL DICE'),
        )
      ])),
    );
  }
}
