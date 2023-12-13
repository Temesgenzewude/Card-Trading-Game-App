import 'package:card_trading_web/dependency_injection/shared_pref_injection.dart';
import 'package:card_trading_web/src/constants/shared_pref_keys.dart';
import 'package:card_trading_web/src/routing/routes.dart';
import 'package:card_trading_web/src/shared_pref/shared_pref_manager.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
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
    return Container(
      width: double.infinity,
      height: AppSizer.getHeight(context, 100),
      padding: EdgeInsets.only(
        left: AppSizer.getWidth(context, 300),
        right: AppSizer.getWidth(context, 165),
      ),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage('assets/images/bg_images/bg_image.png'),
            fit: BoxFit.cover),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
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
                  padding: const EdgeInsets.only(right: 25.0),
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
