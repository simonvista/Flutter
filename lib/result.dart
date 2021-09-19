import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore,this.resetQuiz);
//  Getter method
  String get resultPhrase{
    var resultText;
    if(resultScore<=8){
      resultText='Awesome!';
    }else if(resultScore<=12){
      resultText='Pretty likeable!';
    }else if(resultScore<=16){
      resultText='Strange?';
    }else{
      resultText='Too bad!';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(children: [Text(
      resultPhrase,
      style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
    ),
    FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz!'),textColor: Colors.blue,)
    ],)
    );
  }
}
