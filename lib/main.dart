import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(helloapp());
}

class helloapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return helloappstate();
  }
}

class helloappstate extends State<helloapp> {
  final questions = const [
    {
      'questionText': 'What\'s your name?',
      'answers': [
        {'text': 'jake', 'score': 0},
        {'text': 'himanshu', 'score': 4},
        {'text': 'Shockwave', 'score': 0},
        {'text': 'Rixton', 'score': 0},
      ],
    },
    {
      'questionText': 'Whats\'s your fav color?',
      'answers': [
        {'text': 'Blue', 'score': 0},
        {'text': 'Black', 'score': 4},
        {'text': 'Red', 'score': 0},
        {'text': 'Blue', 'score': 0},
      ],
    }
  ];
  var _questionindex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }

  void answerquestion(int score) {
    _totalscore += score;
    setState(() {
      _questionindex = _questionindex + 1;
    });

    print(_questionindex);
    if (_questionindex < questions.length) {
      print("More Questions are there");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('Red Dragon'),
        ),
        body: _questionindex < questions.length
            ? quiz(
                answerquestion: answerquestion,
                questionindex: _questionindex,
                questions: questions,
              )
            : result(_totalscore, _resetQuiz),
      ),
    );
  }
}
