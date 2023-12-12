// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/size_convertor.dart';

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
      backgroundColor: MaterialStatePropertyAll(
        Theme.of(context).colorScheme.secondary,
      ),
      padding: MaterialStateProperty.all(
        EdgeInsets.only(
          left: AppSizer.getWidth(context, 32),
          top: AppSizer.getHeight(context, 12),
          bottom: AppSizer.getHeight(context, 12),
          right: AppSizer.getHeight(context, 15),
        ),
      ),
      elevation: const MaterialStatePropertyAll(1),
      side: MaterialStateProperty.all(
        BorderSide(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        ),
      ),
      hintText: hintText,
      hintStyle: MaterialStatePropertyAll(
        TextStyle(
          fontWeight: FontWeight.w300,
          color: Theme.of(context).colorScheme.onTertiary.withOpacity(0.7),
          fontSize: 14,
        ),
      ),
      constraints: BoxConstraints(
          maxWidth: AppSizer.getWidth(context, 473),
          minWidth: AppSizer.getWidth(context, 133)),
    );
  }
}
