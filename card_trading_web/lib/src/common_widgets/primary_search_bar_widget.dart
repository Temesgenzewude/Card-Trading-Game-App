// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/size_convertor.dart';

class PrimarySearchBar extends StatelessWidget {
  PrimarySearchBar({super.key, required this.hintText});

  String hintText;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      trailing: [
        Icon(
          Icons.search,
          color: Theme.of(context).colorScheme.tertiary,
          size: 27,
        ),
      ],
      backgroundColor: MaterialStatePropertyAll(
        Theme.of(context).colorScheme.secondary,
      ),
      padding: MaterialStateProperty.all(
        EdgeInsets.only(
          left: AppSizer.getWidth(context, 20),
          top: 7,
          bottom: 9,
          right: AppSizer.getHeight(context, 20),
        ),
      ),
      elevation: const MaterialStatePropertyAll(1),
      side: MaterialStateProperty.all(
        BorderSide(
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
      hintText: hintText,
      hintStyle: MaterialStatePropertyAll(
        TextStyle(
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.onTertiary.withOpacity(0.7),
          fontSize: 14,
        ),
      ),
      constraints: BoxConstraints(
          maxWidth: AppSizer.getWidth(context, 473),
          minWidth: AppSizer.getWidth(context, 233)),
    );
  }
}
