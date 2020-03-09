import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALICURATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
                child: Text('Your Result',style: kTitleTextStyle,),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(colour: kActiveCardColour,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Normal',style: kResultTextStyle,),
              Text('18.3',style: kBMITextStyle,),
              Text('Your BMI result is quite low, you should eat more!',
                textAlign: TextAlign.center,
                style: kBodyTextStyle,)
            ],
          ),))
        ],
      ),
    );
  }
}
