// ignore_for_file: must_be_immutable

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
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 10),
          vertical: AppSizer.getHeight(context, 12),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.secondary,
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage(imageUrl),
              width: AppSizer.getWidth(context, 33),
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: AppSizer.getWidth(context, 12),
            ),
            Flexible(
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'InterRegular'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
