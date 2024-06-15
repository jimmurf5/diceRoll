import 'dart:math';

import 'package:flutter/material.dart';
final randomiser = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

 @override
 State<DiceRoller> createState(){
  return _DiceRollerState();
 }
  }

  class  _DiceRollerState extends State<DiceRoller> {
var activeDiceImage = 'assets/images/dice-2.png';
  
  void rollDice() {
    var numb = randomiser.nextInt(6) +1;

    setState(() {
      /*switch(numb){
      case 1:activeDiceImage = 'assets/images/dice-1.png';
      case 2:activeDiceImage = 'assets/images/dice-2.png';
      case 3:activeDiceImage = 'assets/images/dice-3.png';
      case 4:activeDiceImage = 'assets/images/dice-4.png';
      case 5:activeDiceImage = 'assets/images/dice-5.png';
      case 6:activeDiceImage = 'assets/images/dice-6.png';
      
    }*/
      activeDiceImage = 'assets/images/dice-$numb.png';
    });
    
    
  }


    @override
    Widget build(context) {
       return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Roll Dice'),
            )
          ],
        );
    }
   
  }
