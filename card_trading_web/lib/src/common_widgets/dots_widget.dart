// ignore_for_file: must_be_immutable

import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/selected_dot_widget.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/widgets/unselected_dot_widget.dart';
import 'package:flutter/material.dart';

class DotsWidget extends StatefulWidget {
  final int selectedIndex;
  double? size;
  int? totalDots;
  DotsWidget(
      {required this.selectedIndex, this.size, super.key, this.totalDots});

  @override
  State<DotsWidget> createState() => _DotsWidgetState();
}

class _DotsWidgetState extends State<DotsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.totalDots ?? 4,
        (index) => index == widget.selectedIndex
            ? SelectedDot(size: widget.size)
            : UnselectedDot(
                size: widget.size,
              ),
      ),
    );
  }
}
