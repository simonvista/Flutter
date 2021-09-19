//  Custom widget
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
//    const: value never change in compile time & runtime, final: value never change in runtime
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),) ;
  }
}
