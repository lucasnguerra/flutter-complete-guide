import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Center(
            child: Column(
              children: [
                Question(questions[_questionIndex]),
                ElevatedButton(
                  child: Text('Answer 1'),
                  onPressed: _answerQuestion,
                ),
                ElevatedButton(
                  child: Text('Answer 2'),
                  onPressed: _answerQuestion,
                ),
                ElevatedButton(
                  child: Text('Answer 3'),
                  onPressed: _answerQuestion,
                ),
              ],
            ),
          )),
    );
  }
}
