import 'package:flutter/material.dart';

class Iconswidget extends StatelessWidget {
  Iconswidget({required this.iconfor, required this.name});
  final IconData iconfor;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconfor,
          size: 65,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white.withOpacity(0.7),
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
