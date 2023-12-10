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
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 20),
          vertical: AppSizer.getHeight(context, 14),
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
          color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
          fontSize: 14,
        ),
      ),
      constraints: BoxConstraints(
        maxWidth: AppSizer.getWidth(context, 547),
      ),
    );
  }
}
