import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

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
      child: Text(
        resultPharse,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'Georgia'),
      ),
    );
  }
}
