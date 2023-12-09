// ignore_for_file: must_be_immutable

import 'package:card_trading_game_app/src/constants/colors.dart';
import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class PrimarySearchBar extends StatelessWidget {
  PrimarySearchBar({super.key, required this.hintText});

  String hintText;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      trailing: const [
        Icon(
          Icons.search,
        ),
      ],
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 20),
          vertical: AppSizer.getHeight(context, 14),
        ),
      ),
      elevation: const MaterialStatePropertyAll(1),
      side: MaterialStateProperty.all(
        const BorderSide(color: Color.fromARGB(146, 63, 46, 62)),
      ),
      hintText: hintText,
      hintStyle: const MaterialStatePropertyAll(
        TextStyle(
          fontWeight: FontWeight.w300,
          color: Color(0xFF3F2E3E),
          fontSize: 14,
        ),
      ),
      constraints: BoxConstraints(
        maxWidth: AppSizer.getWidth(context, 547),
      ),
    );
  }
}
