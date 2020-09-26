import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhase{
   
   var resultText ='You Did It \)';
   if(resultScore <=8){
     resultText = 'You Are Awesome and innocent';

   }else if(resultScore <=12) {
     resultText = 'Pretty likeable!';
   }else if(resultScore <= 16) {
     resultText = 'You are .... Strange?!';
   }else{
     resultText = 'You are so bad!'; 
   } 
   return resultText;

  }

  @override
  Widget build(BuildContext context) {
    return Center(
             child: Column(
               children: <Widget>[
                 Text(
                  resultPhase,
                  style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
             ),
             
             FlatButton(
               child: Text(
                 'Restart Quiz!',
             ),
             textColor: Colors.blue,
              onPressed: resetHandler ,),
           ],
         ),
        );
  }
}