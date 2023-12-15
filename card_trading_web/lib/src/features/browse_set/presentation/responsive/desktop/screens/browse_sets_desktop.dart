// ignore_for_file: must_be_immutable

import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/screens/responsive/desktop_layout.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class BrowseSetsDesktop extends StatefulWidget {
  const BrowseSetsDesktop({super.key});

  @override
  State<BrowseSetsDesktop> createState() => _BrowseSetsDesktopState();
}

class _BrowseSetsDesktopState extends State<BrowseSetsDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizer.getWidth(context, 154),
                vertical: AppSizer.getHeight(context, 54),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SeriesNameCardWidget(
                    children: 5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SeriesNameCardWidget(
                    children: 8,
                  ),
                  SeriesNameCardWidget(
                    children: 10,
                  ),
                ],
              ),
            ),
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}
