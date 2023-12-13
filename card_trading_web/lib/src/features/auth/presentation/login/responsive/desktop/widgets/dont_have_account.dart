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
            TextSpan(text: message ?? 'Don\'t have an account yet? '),
            TextSpan(
              text: message != null ? 'Sign In' : 'Signup',
              style: const TextStyle(color: Colors.blue),
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
