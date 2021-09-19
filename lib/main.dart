import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main()=>runApp(MyApp());
/*void main(){
  runApp(MyApp());
}*/
//Data can be rebuilt
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
//Data is persistent. Prefix '_' makes private
class _MyAppState extends State<MyApp> {
  final _questions=const [
//  static const questions=[
    {'QuestionText':'What\'s your favorite color?',
      'answers':[
        {'text':'Black','score':10},
        {'text':'Red','score':5},
        {'text':'Green','score':3},
        {'text':'White','score':1},
      ]
    },
    {'QuestionText':'What\'s your favorite animal?',
      'answers':[
        {'text':'Rabbit','score':3},
        {'text':'Snake','score':11},
        {'text':'Elephant','score':5},
        {'text':'Lion','score':9},
      ]
    },
    {'QuestionText':'Who\'s your favorite instructor?',
      'answers':[
        {'text':'Amy','score':1},
        {'text':'Bob','score':1},
        {'text':'Cheney','score':1},
        {'text':'Dougals','score':1},
      ]
    },
  ];
  var _questionIndex=0;
  var _totalScore=0;
  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });

  }

  void _answerQuestion(int score){
    _totalScore+=score;
    setState(() {
      _questionIndex+=1;
    });
//    questionIndex+=1;
    print(_questionIndex);
    if(_questionIndex<_questions.length){
      print('We\'ve more questions');
    }else{
      print('No more questions');
    }
  }
  @override
  Widget build(BuildContext context) {
//    const: value never change in compile time & runtime, final: value never change in runtime
//  var questions=const ['Hi']: const means the value is never changeable
    /*const questions=[
      {'QuestionText':'What\'s your favorite color?',
        'answers':['Black','Red','Green','White']
      },
      {'QuestionText':'What\'s your favorite animal?',
        'answers':['Rabbit','Snake','Elephant','Lion']
      },
      {'QuestionText':'Who\'s your favorite instructor?',
        'answers':['Amy','Bob','Cheney','Douglas']
      },
    ];*/
    /*var questions=[
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];*/
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex<_questions.length ?
      Quiz(answerQuestions: _answerQuestion,questionIndex: _questionIndex,questions: _questions,) : Result(_totalScore,_resetQuiz),
      /*Column(
        children: [
          Question(questions[_questionIndex]['QuestionText']),
//          Question(questions[_questionIndex]),
//          Text(questions[_questionIndex]),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
            return Answer(_answerQuestion,answer);
          }).toList()
//          Answer(_answerQuestion),
//          Answer(_answerQuestion),
//          Answer(_answerQuestion),
//          RaisedButton(child: Text('Answer 1'),onPressed: _answerQuestion,),
//          RaisedButton(child: Text('Answer 2'),onPressed: ()=>print('Answer 2'),),    //Anonymous function
//          RaisedButton(child: Text('Answer 3'),onPressed: (){print('Answer 3');},),
        ],
      ) : Center(child: Text('No more questions!'),),*/
    ),);
  }
}
//  Create new widget by creating new class
//  Create question.dart
