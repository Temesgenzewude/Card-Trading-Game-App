// ignore_for_file: must_be_immutable

import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/selected_dot_widget.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/unselected_dot_widget.dart';
import 'package:flutter/material.dart';

class DotsWidget extends StatelessWidget {
  final int selectedIndex;
  double? size;
  int? totalDots;
  DotsWidget(
      {required this.selectedIndex, this.size, super.key, this.totalDots});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: List.generate(
        totalDots ?? 4,
        (index) => index == selectedIndex
            ? SelectedDot(size: size)
            : const UnselectedDot(),
      ),
    );
  }
}
