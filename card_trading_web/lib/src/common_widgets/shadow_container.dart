import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  final double width;
  const ShadowContainer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizer.getWidth(context, width),
      height: 10,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide.none, top: BorderSide.none),
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 10,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ]),
    );
  }
}
