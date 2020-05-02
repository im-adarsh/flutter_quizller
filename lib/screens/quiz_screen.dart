import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizller/models/question.dart';
import 'package:quizller/service/quiz_brain.dart';
import 'package:quizller/widgets/two_option_question_widget.dart';
import 'package:getflutter/getflutter.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<GFIconBadge> scoreKeeper = [
  ];

  QuizBrain q = new QuizBrain();
  int correctAnswerCount = 0;
  int wrongAnswerCount = 0;

  @override
  Widget build(BuildContext context) {
    Question question = q.getQuestionNext();
    return Column(
      children: <Widget>[
        TwoOptionQuestionWidget(
          question: question.question,
          trueLabel: "True",
          falseLabel: "False",
          onTruePressed: () {
            setState(() {
              answered(question.answer, true);
            });
          },
          onFalsePressed: () {
            setState(() {
              answered(question.answer,false);
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: scoreKeeper,
        ),

      ],
    );
  }

  void answered(bool expected, bool got) {
     if (expected == got) {
       correctAnswerCount++;
       scoreKeeper.add(GFIconBadge(
         child: GFIconButton(
           size: GFSize.SMALL,
           color: GFColors.SUCCESS,
           onPressed: (){},
           icon: Icon(Icons.check),
         ),
       ));
    }else {
       wrongAnswerCount++;
       scoreKeeper.add(GFIconBadge(
         child: GFIconButton(
           size: GFSize.SMALL,
           color: GFColors.DANGER,
           onPressed: (){},
           icon: Icon(Icons.close),
         ),
       ));
    }
  }
}