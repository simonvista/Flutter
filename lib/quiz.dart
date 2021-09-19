import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
   final List<Map<String,Object>> questions;
   final int questionIndex;
   final Function answerQuestions;
   Quiz({@required this.questions,@required this.answerQuestions,@required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['QuestionText']),
//          Question(questions[_questionIndex]),
//          Text(questions[_questionIndex]),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
          return Answer(()=>answerQuestions(answer['score']),answer['text']);
        }).toList()
//          Answer(_answerQuestion),
//          Answer(_answerQuestion),
//          Answer(_answerQuestion),
//          RaisedButton(child: Text('Answer 1'),onPressed: _answerQuestion,),
//          RaisedButton(child: Text('Answer 2'),onPressed: ()=>print('Answer 2'),),    //Anonymous function
//          RaisedButton(child: Text('Answer 3'),onPressed: (){print('Answer 3');},),
      ],
    );
  }
}
