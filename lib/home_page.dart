import 'package:bmi_cal_app/calculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconreuse.dart';
import 'reuse_card.dart';
import 'constant.dart';
import 'result.dart';
import 'bottombutton.dart';
import 'calculator.dart';

enum GenderType { male, female }

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GenderType? selectgender;
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
          backgroundColor: Color(0xff7B2869),
        ),
        body: Container(
          color: Color(0xff7B2869),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reusecard(
                      onPress: () {
                        setState(() {
                          selectgender = GenderType.male;
                        });
                      },
                      col: selectgender == GenderType.male
                          ? cardcolor
                          : cardcoloropa,
                      cardchild: Iconswidget(
                        iconfor: FontAwesomeIcons.mars,
                        name: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                      child: Reusecard(
                          onPress: () {
                            setState(() {
                              selectgender = GenderType.female;
                            });
                          },
                          col: selectgender == GenderType.female
                              ? cardcolor
                              : cardcoloropa,
                          cardchild: Iconswidget(
                            iconfor: FontAwesomeIcons.venus,
                            name: 'FEMALE',
                          )))
                ],
              ),
            ),
            Expanded(
                child: Reusecard(
                    onPress: () {},
                    col: cardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: textstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: textbig,
                            ),
                            Text(
                              'cm',
                              style: textstyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbColor: Color(0xffFFBABA),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0)),
                          child: Slider(
                            value: height.toDouble(),
                            activeColor: Colors.amber,
                            inactiveColor: Colors.white,
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.toInt();
                              });
                            },
                          ),
                        )
                      ],
                    ))),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Reusecard(
                          onPress: () {},
                          col: cardcolor,
                          cardchild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: textstyle,
                              ),
                              Text(
                                weight.toString(),
                                style: textbig,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Roundbutton(
                                      icon: FontAwesomeIcons.plus,
                                      onpress: () {
                                        setState(() {
                                          weight++;
                                        });
                                      }),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Roundbutton(
                                    icon: FontAwesomeIcons.minus,
                                    onpress: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  )
                                ],
                              )
                            ],
                          ))),
                  Expanded(
                      child: Reusecard(
                          onPress: () {},
                          col: cardcolor,
                          cardchild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: textstyle,
                              ),
                              Text(
                                age.toString(),
                                style: textbig,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Roundbutton(
                                      icon: FontAwesomeIcons.plus,
                                      onpress: () {
                                        setState(() {
                                          age++;
                                        });
                                      }),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Roundbutton(
                                    icon: FontAwesomeIcons.minus,
                                    onpress: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  )
                                ],
                              )
                            ],
                          )))
                ],
              ),
            ),
            Bottomwidget(
              onpress: () {
                CalculatorBmi cal =
                    CalculatorBmi(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(
                              bmiresult: cal.calculateBmi(),
                              resulttext: cal.getResult(),
                              quotes: cal.getResultquote(),
                            )));
              },
              text: 'CALCULATOR',
            )
          ]),
        ));
  }
}

class Roundbutton extends StatelessWidget {
  Roundbutton({required this.icon, required this.onpress});
  final IconData icon;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xffFFBABA),
    );
  }
}
