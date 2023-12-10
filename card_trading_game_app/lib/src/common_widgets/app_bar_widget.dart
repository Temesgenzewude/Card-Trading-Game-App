import 'package:flutter/material.dart';

import 'button_widget.dart';
import 'primary_search_bar_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 250, right: 30),
          child: PrimarySearchBar(
            hintText: 'Search for cards',
          ),
        ),
        PrimaryButton(
          buttonName: 'Sign In',
          buttonRadius: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: PrimaryButton(
            buttonName: 'Create Account',
            buttonRadius: 8,
          ),
        ),
      ],
    );
  }
}
