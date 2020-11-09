import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indexQuestion = 0;
  var _score = 0;
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [{'text':'Red','score': 1 },{ 'text':'White','score': 5 }, {'text':'Blue','score': 2 }, {'text':'Orange','score': 10 }]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [{'text':'Rabbit','score': 10 }, {'text':'Lion','score': 4 }, {'text':'Deer','score': 6 }, {'text':'Dog','score': 3 }]
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answer': [{'text':'Opshanka','score': 5 }, {'text':'Prabath','score': 10 }]
    },
  ];

  void _answerQuestion(int score) {

    if (_indexQuestion < _questions.length) {
      setState(() {
        _indexQuestion = _indexQuestion + 1;
        _score+=score;
      });
    }
    print(_indexQuestion);
    print("Answer chosen");
  }

  void _resetQuiz(){
    setState(() {
      _indexQuestion = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Initial Flutter App"),
        ),
        body: _indexQuestion < _questions.length ? Quiz(
            _questions,_indexQuestion,_answerQuestion
        ) : Result(_score,_resetQuiz)
      ),
    );
  }
}
