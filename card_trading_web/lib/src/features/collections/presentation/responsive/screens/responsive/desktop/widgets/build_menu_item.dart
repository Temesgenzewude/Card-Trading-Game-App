import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/features/more_options/presentation/responsive/desktop/widgets/build_cutom_divider.dart';
import 'package:flutter/material.dart';

PopupMenuItem<dynamic> buildMenuItem(
    {required String title, required Widget icon, bool showDivider = true}) {
  return PopupMenuItem(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: showDivider ? 10 : 0),
          child: Row(
            children: [
              icon,
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'InterRegular',
                      color: AppColors.appBarBackgroundColor),
                ),
              ),
            ],
          ),
        ),
        if (showDivider) const BuildCustomDivider(),
      ],
    ),
  );
}
