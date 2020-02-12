import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  var questionsIndex = 0;

  void answerQuestion() {
    setState(() {
      questionsIndex = questionsIndex + 1;
    });
    
    print(questionsIndex);
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
            Text(questions[questionsIndex],),
            RaisedButton(
              child: Text('Przycisk 1'),
              onPressed: answerQuestion,
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
