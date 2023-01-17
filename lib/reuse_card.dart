import 'package:flutter/material.dart';

class Reusecard extends StatelessWidget {
  Reusecard({required this.col, required this.cardchild});
  final Color col;
  final Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration:
          BoxDecoration(color: col, borderRadius: BorderRadius.circular(10.0)),
      child: cardchild,
    );
  }
}
