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
    Icon(
      Icons.check,
      color: Colors.green,
    )
  ];

  String question = "This is where the question text will go.";
  bool isTrueAnswer = true;

  @override
  Widget build(BuildContext context) {
    return TwoOptionQuestionWidget(
      question:"This is where the question text will go.",
      trueLabel: "True",
      falseLabel: "False",
      isTrueAnswer: true,
    );
  }
}



/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/