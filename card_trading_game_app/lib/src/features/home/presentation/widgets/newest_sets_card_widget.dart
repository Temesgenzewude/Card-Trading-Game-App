import 'package:flutter/material.dart';

import '../../../../common_widgets/card_name_widget.dart';
import '../../../../utils/size_convertor.dart';
import 'inner_card_widget.dart';

class NewestSetsCardWidget extends StatelessWidget {
  const NewestSetsCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardNameWidget(
          primaryTitile: 'Newests sets',
          width: 267,
          secondaryTitle: 'View all',
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizer.getWidth(context, 28),
            vertical: AppSizer.getHeight(context, 28),
          ),
          width: AppSizer.getWidth(context, 265),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.secondary,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: const Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              InnerCardWidget(
                  imageUrl: 'assets/images/image14.png',
                  title: 'Card set name'),
              SizedBox(
                height: AppSizer.getHeight(context, 15),
              ),
              InnerCardWidget(
                  imageUrl: 'assets/images/image14.png',
                  title: 'Card set name'),
              SizedBox(
                height: AppSizer.getHeight(context, 15),
              ),
              InnerCardWidget(
                imageUrl: 'assets/images/image14.png',
                title: 'Card set name',
              ),
            ],
          ),
        )
      ],
    );
  }
}


