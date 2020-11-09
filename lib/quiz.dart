import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List< Map<String, Object>> questions;
  final int indexQuestion;
  final Function answerQuestion;
  Quiz(@required this.questions, @required this.indexQuestion, @required this.answerQuestion);



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Question(
            questions[indexQuestion]['questionText']),
        ...(questions[indexQuestion]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
