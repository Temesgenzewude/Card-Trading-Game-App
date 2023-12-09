import 'package:card_trading_game_app/src/common_widgets/button_widget.dart';
import 'package:card_trading_game_app/src/common_widgets/primary_search_bar_widget.dart';
import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: AppSizer.getHeight(context, 58),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: AppSizer.getWidth(context, 365),
                    right: AppSizer.getWidth(context, 147)),
                child: Row(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
