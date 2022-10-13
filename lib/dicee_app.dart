import 'package:flutter/material.dart';
import 'dart:math';

class DiceeApp extends StatefulWidget {
  const DiceeApp({Key? key}) : super(key: key);

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}
class _DiceeAppState extends State<DiceeApp> {
  int diceOne = 1;
  int diceTwo = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee',),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        diceOne = Random().nextInt(6)+1;
                        diceTwo = Random().nextInt(6)+1;
                      });
                    },
                    child: Image(image: AssetImage('images/dice$diceOne.png'  ),
                 ),
                  ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      diceOne = Random().nextInt(6)+1;
                      diceTwo = Random().nextInt(6)+1;
                    });
                  },
                  child: Image(image: AssetImage('images/dice$diceTwo.png'  ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }


}
