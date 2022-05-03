import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI CALCULATOR",
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      this.resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      this.bmiResult,
                      style: kBMITextStyle,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Normal BMI range:",
                          style: kInactiveTextStyle,
                        ),
                        Text(
                          "18,5 - 25 kg/m2",
                          style: kActiveTextStyle,
                        )
                      ],
                    ),
                    Text(
                      this.interpretation,
                      textAlign: TextAlign.center,
                      style: kInterTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              textButton: "RE-CALCULATE",
              onPress : () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
