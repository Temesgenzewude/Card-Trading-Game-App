import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/size_convertor.dart';

class CollectionStatusCardWidget extends StatelessWidget {
  const CollectionStatusCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: AppSizer.getHeight(context, 40),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: AppSizer.getHeight(context, 21),
          horizontal: AppSizer.getWidth(context, 23),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            boxShadow(),
          ],
          border: Border.all(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
            width: 1,
          ),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Padding(
                padding:
                    EdgeInsets.only(right: AppSizer.getWidth(context, 100)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Collection Status',
                      style: TextStyle(
                        fontSize: AppSizer.getHeight(context, 20),
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const Text('You must be logged in to track your collection')
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: AppSizer.getWidth(context, 5)),
                  child: const Text(
                    'Car Owned',
                  ),
                ),
                const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(right: AppSizer.getWidth(context, 5)),
                    child: const Text(
                      'Car not owned',
                    ),
                  ),
                  const Icon(
                    Icons.check_circle,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
