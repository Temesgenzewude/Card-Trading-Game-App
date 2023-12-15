// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HoverContent extends StatelessWidget {
  Widget iconType(index) {
    if (index == 0) {
      return SvgPicture.asset(
        'assets/svg_images/green_check.svg',
      );
    } else {
      return SvgPicture.asset(
        'assets/svg_images/grey_check.svg',
      );
    }
  }

  HoverContent({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        width: AppSizer.getWidth(context, 46),
        // height: 210,
        padding: const EdgeInsets.only(
          top: 7,
          bottom: 15,
        ),
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Colors.black, Colors.black.withOpacity(0), Colors.black],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  index == 0 ? 'Already Owned' : 'Card not owned',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 14,
                      fontFamily: 'InterRegular'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: AppSizer.getWidth(context, 5)),
                  child: iconType(index),
                ),
              ],
            ),
            Text(
              '#${index + 1}- Card Name',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 14,
                  fontFamily: 'InterBold'),
            ),
          ],
        ),
      ),
    );
  }
}
