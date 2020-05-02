import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwoOptionQuestionWidget extends StatelessWidget {
  const TwoOptionQuestionWidget({
    Key key, this.question, this.trueLabel, this.falseLabel, this.isTrueAnswer,
  }) : super(key: key);

  final String question;
  final String trueLabel;
  final String falseLabel;
  final bool isTrueAnswer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children : <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  trueLabel,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  if (isTrueAnswer) {
                    print("you are correct");
                  }
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.red,
                child: Text(
                  falseLabel,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (!isTrueAnswer) {
                    print("you are wrong");
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}