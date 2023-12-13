import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../routing/routes.dart';

class DontHaveAccount extends StatelessWidget {
  final String? message;
  const DontHaveAccount({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
                text: message ?? 'Don\'t have an account yet? ',
                style: TextStyle(fontSize: AppSizer.getHeight(context, 20))),
            TextSpan(
              text: message != null ? 'Sign In' : 'Signup',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: AppSizer.getHeight(context, 20)),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  if (message != null) {
                    context.go('/${AppRoutes.DesktopLogin.name}');
                  } else {
                    context.go('/${AppRoutes.DesktopSignup.name}');
                  }
                },
            ),
          ],
        ),
      ),
    );
  }
}
