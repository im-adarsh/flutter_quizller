import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

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
    return GFCard(
      border: Border.all(
        color: GFColors.SUCCESS,
        width: 5,
      ),
      image: Image.asset('assets/quiz.jpg',filterQuality: FilterQuality.medium),
      padding: EdgeInsets.all(30),
      elevation: 5,
      boxFit: BoxFit.cover,
//      title: GFListTile(
//          title: Text(question),
//          icon: GFIconButton(
//            onPressed: null,
//            icon: Icon(Icons.favorite_border),
//            //type: GFType.transparent,
//          )
//      ),
      content: Text(question, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
      buttonBar: GFButtonBar(
        padding: EdgeInsets.all(30),
        alignment: WrapAlignment.spaceBetween,
        spacing:90,
        // alignment: MainAxisAlignment.start,
        children: <Widget>[
          GFButton(
            size: GFSize.LARGE,
            color: GFColors.SUCCESS,
            onPressed: () {},
            text: trueLabel,
          ),
          GFButton(
            size: GFSize.LARGE,
            color: GFColors.DANGER,
            onPressed: () {},
            text: falseLabel,
          ),
        ],
      ),
    );
  }
}