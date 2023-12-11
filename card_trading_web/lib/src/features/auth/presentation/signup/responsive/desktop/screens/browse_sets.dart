import 'package:flutter/material.dart';

class BrowseSetTab extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget desktopScaffold;

  const BrowseSetTab({
    super.key,
    required this.desktopScaffold,
    required this.mobileScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.minWidth < 200) {
          return mobileScaffold;
          // } else if (constraints.maxWidth < 1100) {
          //   return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
