import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
//    const: value never change in compile time & runtime, final: value never change in runtime
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
//        onPressed: null,
      ),
    );
  }
}
