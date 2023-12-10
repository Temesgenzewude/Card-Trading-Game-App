import 'package:card_trading_game_app/src/common_widgets/button_widget.dart';
import 'package:card_trading_game_app/src/common_widgets/primary_search_bar_widget.dart';
import 'package:flutter/material.dart';

import 'button_widget.dart';
import 'primary_search_bar_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

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
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: PrimaryButton(
              buttonName: 'Sign In',
              buttonRadius: 8,
            ),
          ),
          PrimaryButton(
            buttonName: 'Create Account',
            buttonRadius: 8,
          ),
        ],
      ),
    );
  }
}
