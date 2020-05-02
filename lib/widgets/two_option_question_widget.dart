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
      boxFit: BoxFit.cover,
      image: Image.asset('your asset image'),
//      title: GFListTile(
//          title: Text(question),
//          icon: GFIconButton(
//            onPressed: null,
//            icon: Icon(Icons.favorite_border),
//            //type: GFType.transparent,
//          )
//      ),
      content: Text("Some quick example text to build on the card"),
      buttonBar: GFButtonBar(
        // alignment: MainAxisAlignment.start,
        children: <Widget>[
          GFButton(
            color: GFColors.SUCCESS,
            onPressed: () {},
            text: 'True',
          ),
          GFButton(
            color: GFColors.DANGER,
            onPressed: () {},
            text: 'False',
          ),
        ],
      ),
    );
  }
}