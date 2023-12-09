
import 'package:card_trading_game_app/src/common_widgets/button_widget.dart';
import 'package:card_trading_game_app/src/common_widgets/primary_search_bar_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PrimarySearchBar(
          hintText: 'Search for cards',
        ),
        PrimaryButton(
          buttonName: 'Signin',
          buttonRadius: 8,
        ),
        PrimaryButton(
          buttonName: 'Signup',
          buttonRadius: 8,
        ),
      ],
    );
  }
}
