// ignore_for_file: unused_import, must_be_immutable

import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class SelectedDot extends StatelessWidget {
  SelectedDot({super.key, this.size});
  double? size;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Container(
          width: AppSizer.getWidth(context, 20),
          height: AppSizer.getHeight(context, 20),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
              // border: Border.all(
              //   color:
              //       Theme.of(context).colorScheme.onTertiary.withOpacity(0.3),
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: const Offset(0, 0),
                  blurRadius: 4,
                  spreadRadius: 1,
                )
              ]),
          child: Center(
            child: Container(
              width: AppSizer.getWidth(context, 10),
              height: AppSizer.getHeight(context, 10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onTertiary,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
