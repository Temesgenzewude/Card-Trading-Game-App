import 'package:flutter/material.dart';

import '../../../../utils/size_convertor.dart';

class InnerCardWidget extends StatelessWidget {
  InnerCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  String imageUrl;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.secondary,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset: const Offset(0, 0),
            blurRadius: 1,
            // spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(imageUrl),
            width: AppSizer.getWidth(context, 25),
          ),
          SizedBox(
            width: AppSizer.getWidth(context, 10),
          ),
          Text(
            title,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: AppSizer.getWidth(context, 15)),
          )
        ],
      ),
    );
  }
}
