import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChangeButton extends StatelessWidget {
  final bool isChangeEmail;
  const ChangeButton({super.key, required this.isChangeEmail});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(64),
              gradient: AppColors.buttonGradient,
              boxShadow: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 8,
                  offset: Offset(0, 6),
                  spreadRadius: 0,
                )
              ]),
          height: 48,
          width: AppSizer.getWidth(context, 430),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
              onPressed: () {
                isChangeEmail
                    ? context.go('/${AppRoutes.DesktopSettingScreen.name}')
                    : context.go('/${AppRoutes.DesktopSettingScreen.name}');
              },
              child: Text(
                isChangeEmail ? 'Change Email' : 'Change Password',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontFamily: 'InterRegular',
                  fontSize: 16,
                ),
              )),
        ),
      ),
    );
  }
}
