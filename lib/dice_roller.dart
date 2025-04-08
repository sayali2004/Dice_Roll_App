import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget
{
 const  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>
{
  final radomizer=Random();
  var currentroll=2;
  void rollDice() {
    var diceroll=radomizer.nextInt(6)+1;
    setState((){
       currentroll=diceroll;
       
    });
   
    //print('Changing Image...');
  }
  
  @override
 Widget build(context){
  return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice $currentroll.png',
              width: 200,
            ),
            const SizedBox( height: 20,),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 28,
                    )),
                child: const Text('Roll Dice')),
          ],
        );
 }
}