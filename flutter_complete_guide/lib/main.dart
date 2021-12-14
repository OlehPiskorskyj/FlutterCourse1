import 'package:flutter/material.dart';
import './qestion.dart';
import './answer.dart';

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
  final questions = const [
    {
      "questionText": "What is your favorite color?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What is your favorite animal?",
      "answers": ["Cat", "Cat", "Cat", "Squirel"]
    },
    {
      "questionText": "Who is your favorite instuctor?",
      "answers": ["Oleh", "Oleh", "Oleh"]
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < questions.length
              ? Column(
                  children: [
                    Question(
                      questions[_questionIndex]["questionText"],
                    ),
                    ...(questions[_questionIndex]["answers"] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestion, answer);
                    }).toList(),
                  ],
                )
              : Center(
                  child: Text("You did it"),
                )),
    );
  }
}
