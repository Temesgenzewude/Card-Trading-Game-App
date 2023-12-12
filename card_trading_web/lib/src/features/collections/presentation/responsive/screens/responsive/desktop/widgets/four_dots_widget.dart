import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/selected_dot_widget.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/unselected_dot_widget.dart';
import 'package:flutter/material.dart';

class FourDots extends StatelessWidget {
  final int index;
  const FourDots({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        index == 0 ? const SelectedDot() : const UnselectedDot(),
        index == 1 ? const SelectedDot() : const UnselectedDot(),
        index == 2 ? const SelectedDot() : const UnselectedDot(),
        index == 3 ? const SelectedDot() : const UnselectedDot(),
      ],
    );
  }
}
