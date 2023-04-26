import 'package:bmicalculator/screen/input_page.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    required this.cardChild,
    required this.colour,
  });
  final Widget cardChild;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadiusDirectional.circular(10)),
      ),
    );
  }
}
