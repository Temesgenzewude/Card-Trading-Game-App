import 'package:flutter/material.dart';

class CircleIndicator extends StatelessWidget {
  final int index;
  final int thisIndex;
  const CircleIndicator(
      {super.key, required this.index, required this.thisIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 14.5,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: OvalBorder(),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index == thisIndex ? Colors.black : Colors.transparent,
          ),
        ),
      ),
    );
  }
}
