import 'package:bmi_calculator/utility/calculator_brain.dart';
import 'package:bmi_calculator/utility/contants.dart';
import 'package:flutter/material.dart';

import '../Widgets/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Your Result',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: kCardBackgroundColor,
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            resultText,
                            style: TextStyle(color: Colors.green.shade600, fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          bmiResult,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child:  Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            interpretation,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
                InkWell(
                  onTap: () {

                    Navigator.pop(context) ;
                  } ,
                  child: Container(
                    color: Color(0xFFEB1555),
                    height: 80,
                    child: Center(
                        child: Text(
                          'RE-CALCULATE',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
