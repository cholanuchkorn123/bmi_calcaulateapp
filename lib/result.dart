import 'package:bmi_cal_app/constant.dart';
import 'package:bmi_cal_app/home_page.dart';
import 'package:bmi_cal_app/reuse_card.dart';
import 'package:flutter/material.dart';
import 'bottombutton.dart';

class Result extends StatelessWidget {
  Result(
      {required this.bmiresult,
      required this.resulttext,
      required this.quotes});
  final String bmiresult;
  final String resulttext;
  final String quotes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7B2869),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Color(0xff7B2869),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                child: Text('Your Result',
                    style: TextStyle(
                        color: Color(0xffF8EDE3),
                        fontSize: 40,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Expanded(
                flex: 5,
                child: Reusecard(
                    col: cardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          resulttext,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.amber.shade100),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          bmiresult,
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w800,
                              color: Colors.lime.shade200),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          quotes,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    onPress: (() {}))),
            Bottomwidget(
              onpress: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              text: 'Recalculate',
            )
          ],
        ),
      ),
    );
  }
}
