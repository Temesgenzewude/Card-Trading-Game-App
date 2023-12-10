import 'package:card_trading_game_app/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class CollectionStatusCardWidget extends StatelessWidget {
  const CollectionStatusCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSizer.getHeight(context, 40)),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 21,
          horizontal: 23,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 1,
            ),
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
            Padding(
              padding: EdgeInsets.only(right: AppSizer.getWidth(context, 100)),
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
