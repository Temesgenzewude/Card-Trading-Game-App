// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class HoverContent extends StatelessWidget {
  HoverContent({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        width: 147,
        // height: 210,
        padding: const EdgeInsets.only(
          top: 7,
          bottom: 15,
        ),
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Colors.black, Colors.black.withOpacity(0), Colors.black],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Card not owned',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 14,
                      fontFamily: 'InterRegular'),
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
