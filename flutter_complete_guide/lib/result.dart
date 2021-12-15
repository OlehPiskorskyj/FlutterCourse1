import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final int resultScore;

  Result({
    @required this.resetQuiz,
    @required this.resultScore,
  });

  String get resultPhrase {
    String returnValue;
    if (resultScore < 9) {
      returnValue = "You are awsome and innocent!";
    } else if (resultScore < 13) {
      returnValue = "Pretty likeable!";
    } else if (resultScore < 17) {
      returnValue = "You are strange.";
    } else {
      returnValue = "You are so bad.";
    }
    return returnValue;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz!"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
