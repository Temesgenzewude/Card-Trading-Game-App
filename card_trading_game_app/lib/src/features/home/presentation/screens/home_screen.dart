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
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_images/bg_image.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: AppSizer.getWidth(context, 365),
                  right: AppSizer.getWidth(
                    context,
                    147,
                  ),
                  top: AppSizer.getHeight(context, 58),
                ),
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
              Padding(
                  padding: EdgeInsets.only(
                    top: AppSizer.getHeight(context, 34),
                  ),
                  child: Container(
                    height: AppSizer.getHeight(context, 90),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
