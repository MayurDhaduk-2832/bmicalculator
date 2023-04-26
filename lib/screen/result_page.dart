import 'package:bmicalculator/compo/bottom_button.dart';
import 'package:bmicalculator/const.dart';
import 'package:bmicalculator/compo/reusablecard.dart';
import 'package:flutter/material.dart';
import '../compo/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  final String resultText;
  final String bmiResult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Center(
                  child: Text(
                    'YOUR RESULT',
                    style: textTiteleStyle,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Container(
                  child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            resultText,
                            style: resultTextStyle,
                          ),
                          Text(
                            bmiResult.toUpperCase(),
                            style: bMITextStyle,
                          ),
                          Text(
                            interpretation,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                          )
                        ],
                      ),
                      colour: activeCardColor),
                )),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE CALCULATE')
          ],
        ));
  }
}
