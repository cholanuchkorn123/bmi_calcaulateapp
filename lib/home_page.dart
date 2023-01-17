import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconreuse.dart';
import 'reuse_card.dart';

const cardcolor = Color(0xffC85C8E);
const cardcoloropa = Color(0xff9D3C72);

enum GenderType { male, female }

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GenderType? selectgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
          backgroundColor: Color(0xff7B2869),
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          color: Color(0xff7B2869),
          child: Column(children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectgender = GenderType.male;
                        });
                      },
                      child: Reusecard(
                        col: selectgender == GenderType.male
                            ? cardcolor
                            : cardcoloropa,
                        cardchild: Iconswidget(
                          iconfor: FontAwesomeIcons.mars,
                          name: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectgender = GenderType.female;
                      });
                    },
                    child: Reusecard(
                        col: selectgender == GenderType.female
                            ? cardcolor
                            : cardcoloropa,
                        cardchild: Iconswidget(
                          iconfor: FontAwesomeIcons.venus,
                          name: 'FEMALE',
                        )),
                  ))
                ],
              ),
            ),
            Expanded(child: Reusecard(col: cardcolor, cardchild: Container())),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Reusecard(col: cardcolor, cardchild: Container())),
                  Expanded(
                      child: Reusecard(col: cardcolor, cardchild: Container()))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 50,
              width: double.infinity,
              color: Color(0xffFFBABA),
            )
          ]),
        ));
  }
}
