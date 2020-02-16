import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import 'package:first_app/question.dart'; // or import './question.dart';
import 'package:first_app/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'Jaki jest twoj ulubiony kolor?',
      'answers': [
        {'text': 'Czarny', 'score': 10},
        {'text': 'Czerwony', 'score': 5},
        {'text': 'Zolty', 'score': 3},
        {'text': 'Zielony', 'score': 1}
      ],
    },
    {
      'questionText': 'Jakie jest twoje ulubione zwierze?',
      'answers': [
        {'text': 'Pies', 'score': 10},
        {'text': 'Kot', 'score': 5},
        {'text': 'Lew', 'score': 3},
        {'text': 'Tygrys', 'score': 1}
      ],
    },
    {
      'questionText': 'Jaka aplikacje bys zrobil?',
      'answers': [
        {'text': 'Pierwsza', 'score': 10},
        {'text': 'Druga', 'score': 5},
        {'text': 'Trzecia', 'score': 3},
        {'text': 'Czwarta', 'score': 1}
      ],
    },
  ];

  var _questionsIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });

    print(_questionsIndex);
    if (_questionsIndex < _questions.length) {
      print('Nastepne pytanie.');
    } else {
      print('Koniec Pytan.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionsIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionsIndex: _questionsIndex)
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
