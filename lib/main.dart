import'package:flutter/material.dart';
import 'package:flutter_app_2/result.dart';

import './quiz.dart';
import './result.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    //
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  final _question = const[
      //Map class
      {
        'question':'what\s your favorite colour?', 
        'answer':[
          {'text':'Blue','score': 10},
          {'text':'Red','score': 5},
          {'text':'Black','score': 7},
          {'text':'White','score': 8}
          ],
      },
      {
        'question':'what\s your favorite animal?', 
        'answer':[
          {'text':'Dog','score': 10},
          {'text':'Cat','score': 5},
          {'text':'Lion','score': 7},
          {'text':'Tiger','score': 8}
          ],
      },
      {
        'question':'what\s your favorite fruit?', 
        'answer':[
          {'text':'Grapes','score': 10},
          {'text':'Orange','score': 5},
          {'text':'Apple','score': 7},
          {'text':'Banana','score': 8}
          ],
      },
       
      

    ];
  
  var _questionIndex = 0;
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
    _totalScore = 0;
    }
   
    );

  }

  void _answerQuestion(int score){

    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex+1;
      
    });
    
    print(_questionIndex);
    if(_questionIndex < _question.length){
      print('we have more questions');
      }else {
        print('no more question');
      }    

  }

  @override
  Widget build(BuildContext context){
    


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
           title: Text("  My First App  "),
           ),
           body: _questionIndex < _question.length ? 
           Quiz(answerQuestion: _answerQuestion,
           question: _question,
           questionIndex: _questionIndex,
           )
           : Result(_totalScore, _resetQuiz),
      ),
   );
 
  }
}