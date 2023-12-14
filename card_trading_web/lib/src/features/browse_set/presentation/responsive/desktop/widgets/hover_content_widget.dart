// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HoverContent extends StatelessWidget {
  HoverContent({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        padding: const EdgeInsets.only(
          top: 7,
          bottom: 15,
        ),
        color: Colors.black.withOpacity(0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    'Card not owned',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 14,
                        fontFamily: 'InterRegular'),
                  ),
                ),
                const Icon(
                  Icons.check_circle,
                  color: Colors.grey,
                ),
              ],
            ),
            Text(
              '#${index + 1}- Card Name',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 14,
                  fontFamily: 'InterBold'),
            ),
          ],
        ),
      ),
    );
  }
}
