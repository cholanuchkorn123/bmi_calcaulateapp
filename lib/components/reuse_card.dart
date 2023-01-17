import 'package:flutter/material.dart';

class Reusecard extends StatelessWidget {
  Reusecard(
      {required this.col, required this.cardchild, required this.onPress});
  final Color col;
  final Widget cardchild;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: col, borderRadius: BorderRadius.circular(10.0)),
        child: cardchild,
      ),
    );
  }
}
