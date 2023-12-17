import 'package:card_trading_web/src/common_widgets/footer_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/card_item_description_widget.dart';
import 'package:card_trading_web/src/features/home/presentation/widgets/featured_card_widgets.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CardDescriptionViewWidget extends StatefulHookWidget {
  const CardDescriptionViewWidget({super.key});

  @override
  State<CardDescriptionViewWidget> createState() =>
      _CardDescriptionViewWidgetState();
}

class _CardDescriptionViewWidgetState extends State<CardDescriptionViewWidget> {
  final List<String> cardGames = [
    'Pokellector',
    'Pokellector2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 65,
                // vertical: AppSizer.getHeight(context, 65),
                horizontal: AppSizer.getWidth(context, 149),
              ),
              child: Column(
                children: [
                  const CardItemDescriptionWidget(),
                  const SizedBox(
                    height: 44,
                  ),
                  FeaturedCardWidget(
                    cardTitle: 'More from card set',
                  ),
                ],
              ),
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
