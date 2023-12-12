import 'package:flutter/material.dart';

class BuildCustomDivider extends StatelessWidget {
  const BuildCustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 170,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF3F2E3E),
            Color(0xFFA78295),
            Color(0xFF3F2E3E),
          ],
          stops: [0.0, 0.5208, 1.0],
        ),
      ),
    );
  }
}
