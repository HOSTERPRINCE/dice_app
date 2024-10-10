import 'package:flutter/material.dart';
import 'dart:math';



class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentdice=2;
  void rolldice(){
    setState(() {
      currentdice=Random().nextInt(6)+1;//the (6) shows the max value which is not included it goes from 0 to 5 so we need 1 to 6 for that we have added 1

    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/dice-$currentdice.png",width: 200,),
        TextButton(onPressed: rolldice,
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(40),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 32),
            ),
            child: Text("ROLL DICE"))
      ],
    );
  }
}
