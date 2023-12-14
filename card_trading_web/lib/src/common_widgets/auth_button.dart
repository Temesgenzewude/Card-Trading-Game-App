import 'package:card_trading_web/dependency_injection/shared_pref_injection.dart';
import 'package:card_trading_web/src/common_widgets/user_profile_name_and_profile_pic.dart';
import 'package:card_trading_web/src/constants/shared_pref_keys.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/shared_pref/shared_pref_manager.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AuthButton extends ConsumerStatefulWidget {
  bool? isSignIn;
  AuthButton({super.key, this.isSignIn});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthButtonState();
}

class _AuthButtonState extends ConsumerState<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: SizedBox(
          height: 48,
          width: AppSizer.getWidth(context, 430),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.tertiary)),
            onPressed: () {
              widget.isSignIn != null
                  ? login(context)
                  : () => Future.delayed(const Duration(seconds: 0), () {
                        context.go('/${AppRoutes.DesktopLogin.name}');
                      });
            },
            child: Text(
              widget.isSignIn != null ? 'Sign In' : 'Sign Up',
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
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
