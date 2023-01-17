import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(30),
            color: Colors.black,
            child: Column(children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Reusecard(),
                    ),
                    Expanded(child: Reusecard())
                  ],
                ),
              ),
              Expanded(
                  child: Expanded(
                      child: Container(
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey),
              ))),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Reusecard()),
                    Expanded(child: Reusecard())
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}

class Reusecard extends StatelessWidget {
  const Reusecard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
