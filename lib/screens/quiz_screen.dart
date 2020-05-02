import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizller/widgets/two_option_question_widget.dart';
import 'package:getflutter/getflutter.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  List<Icon> scoreKeeper = [
  ];

  List<String> questions = [
    "You can lead a cow down stairs but not up stairs.",
    "Approximately one quarter of human bones are in the feet.",
    "A slug\'s blood is green."
  ];
  List<bool> isTrueAnswer = [
    true,
    false,
    true,
  ];

  int questionNo = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TwoOptionQuestionWidget(
        question: questions[questionNo],
        trueLabel: "True",
        falseLabel: "False",
        onTruePressed: () {
          setState(() {
            answered(true);
          });
        },
        onFalsePressed: () {
          setState(() {
            answered(false);
          });
        },
      ),
    );
  }

  void answered( bool got) {
     if (isTrueAnswer[questionNo] == got) {
      scoreKeeper.add( Icon(
        Icons.check,
        color: Colors.green,
      ));
    }else {
      scoreKeeper.add( Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
    if (questions.length - 1  > questionNo ) {
      questionNo++;
    }
  }
}