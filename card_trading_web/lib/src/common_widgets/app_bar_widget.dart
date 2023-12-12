// ignore_for_file: must_be_immutable

import 'package:card_trading_web/dependency_injection/shared_pref_injection.dart';
import 'package:card_trading_web/src/constants/shared_pref_keys.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/shared_pref/shared_pref_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'button_widget.dart';
import 'primary_search_bar_widget.dart';
import 'user_profile_name_and_profile_pic.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({
    super.key,
    this.left,
  });

  Widget? left;

  final prefManager = sl<SharedPrefManager>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: PrimarySearchBar(
              hintText: 'Search for cards',
            ),
          ),
          if (prefManager.getBool(SharedPrefKeys.ISLOGGED))
            buildProfileNameAndProfilePic(),
          if (!prefManager.getBool(SharedPrefKeys.ISLOGGED))
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: PrimaryButton(
                    buttonName: 'Sign In',
                    buttonRadius: 8,
                    onPressed: () {
                      context.go('/${AppRoutes.DesktopLogin.name}');
                    },
                  ),
                ),
                PrimaryButton(
                  buttonName: 'Create Account',
                  buttonRadius: 8,
                  onPressed: () {
                    context.go('/${AppRoutes.DesktopSignup.name}');
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }
}
