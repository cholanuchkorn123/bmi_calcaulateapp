import 'package:flutter/material.dart';

class Bottomwidget extends StatelessWidget {
  Bottomwidget({required this.onpress, required this.text});
  final VoidCallback onpress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        margin: EdgeInsets.only(top: 10),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Color(0xffFFBABA),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 35,
                color: Color(0xff7B2869),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
