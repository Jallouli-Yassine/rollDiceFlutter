import 'dart:math';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
final randomNumber = Random(); //objet yetaml mara bark w baad just natiwh adad kol manenzlo al btn(better for memory)
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//_ maneha rahi class prv matetsta3ml ken lena
class _DiceRollerState extends State<DiceRoller> {
  var text = "asslemaaaaaaaaaaa";
  var activeImage = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRoll = randomNumber.nextInt(6) + 1;
    setState(() {
      activeImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      CustomStyleText(text), // Your existing CustomStyleText widget
      const SizedBox(height: 100),
      Image.asset(
        activeImage,
        width: 200,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 50),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            )),
        child: const Text('ROLL DICE'),
      )
    ]);
  }
}
