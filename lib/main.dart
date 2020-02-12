import 'package:flutter/material.dart';

import 'package:first_app/question.dart'; // or import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });

    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Pytanie pierwsze', 'Pytanie drugie', 'Pytanie trzecie'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionsIndex],
            ),
            RaisedButton(
              child: Text('Przycisk 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Przycisk 2'),
              onPressed: () => print('Answer Chosen 2'),
            ),
            RaisedButton(
              child: Text('Przycisk 3'),
              onPressed: () {
                print('Answer Chosen 3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
