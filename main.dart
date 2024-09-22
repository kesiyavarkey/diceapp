import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 27, 3),
      appBar: AppBar(
        title: Text('Dice Game'),
      backgroundColor: Colors.red,
    ),
    body: DicePage(),
  ),
  ),
  );
}

// class DicePage extends StatelessWidget {
//    DicePage ({ Key ? key}): super(key:key);
//   // to change the images according to dicenumber.please add a variable and allocate the numbers.
// var DiceNumber = 3;
//   @override
  
//   Widget build(BuildContext context) {
//     return  Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: 150.0,
//             width: 150.0,
//             child: TextButton(
//               // to avoid a blink effect while pressing the dice. give style effect for textbutton.
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.green.shade900,
//               ),
//               onPressed: (){
//                 print('$DiceNumber pressed');

//               } ,

//               child:Image.asset('images/dice $DiceNumber.png'),
//               ),

//           )
//         ],),
//     );
//   }
//   }

  class DicePage extends StatefulWidget {

     const DicePage({Key?key}):super(key: key);
 
  @override
    State<DicePage> createState() => _DicePageState();

}

class _DicePageState extends State<DicePage> {
   var DiceNumber = 1;
  @override
  
  
  Widget build(BuildContext context) => Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150.0,
            width: 150.0,
            child: TextButton(
              // to avoid a blink effect while pressing the dice. give style effect for textbutton.
              style: TextButton.styleFrom(
                foregroundColor: Colors.green.shade900,
              ),
              onPressed: (){
                setState(() {
                  print('$DiceNumber pressed');
                DiceNumber=Random().nextInt(6)+1; 
                });
               

              } ,

              child:Image.asset('images/dice $DiceNumber.png'),
              ),

          )
        ],),
    );
  }
