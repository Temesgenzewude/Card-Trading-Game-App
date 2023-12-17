import 'package:card_trading_web/dependency_injection/shared_pref_injection.dart';
import 'package:card_trading_web/src/common_widgets/user_profile_name_and_profile_pic.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/constants/shared_pref_keys.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/shared_pref/shared_pref_manager.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AuthButton extends ConsumerStatefulWidget {
  bool? isSignIn;
  String? text;
  AuthButton({super.key, this.isSignIn, this.text});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthButtonState();
}

class _AuthButtonState extends ConsumerState<AuthButton> {
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
              widget.isSignIn != null && widget.isSignIn == true
                  ? login(context)
                  : context.go('/${AppRoutes.DesktopLogin.name}');
            },
            child: widget.text == null
                ? Text(
                    widget.isSignIn != null ? 'Sign In' : 'Sign Up',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: 'InterRegular',
                      fontSize: 16,
                    ),
                  )
                : Text(
                    'Continue',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: 'InterRegular',
                      fontSize: 16,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

void login(BuildContext context) {
  final prefManager = sl<SharedPrefManager>();
  prefManager.setBool(SharedPrefKeys.ISLOGGED, true);
  Future.delayed(const Duration(seconds: 0), () {
    context.go('/${AppRoutes.DesktopHome.name}');
  });
}
