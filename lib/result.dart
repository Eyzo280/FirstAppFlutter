import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPharse {
    String resultText;
    if (resultScore >= 25) {
      return 'Super Wynik';
    } else if (resultScore < 25 && resultScore > 15) {
      return 'Dobry Wynik';
    } else if (resultScore <= 15) {
      return 'Słaby Wynik';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPharse,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia'),
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Reset'),
            textColor: Colors.red,
          )
        ],
      ),
    );
  }
}
