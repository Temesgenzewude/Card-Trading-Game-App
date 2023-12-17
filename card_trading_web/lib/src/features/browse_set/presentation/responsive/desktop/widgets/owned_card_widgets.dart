import 'package:card_trading_web/src/common_widgets/box_shadow.dart';
import 'package:card_trading_web/src/common_widgets/card_name_widget.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/widgets/light_button_widget.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class OwnedCardsWidget extends StatelessWidget {
  const OwnedCardsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 67,
            ),
            Container(
              padding: EdgeInsets.only(
                left: AppSizer.getWidth(context, 26),
                right: AppSizer.getWidth(context, 26),
                bottom: AppSizer.getWidth(context, 26),
                top: AppSizer.getHeight(context, 29),
              ),
              width: AppSizer.getWidth(context, 302),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Theme.of(context).colorScheme.secondary,
                boxShadow: [
                  boxShadow(),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: AppSizer.getHeight(context, 24),
                    ),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '00',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 64.0,
                            ),
                          ),
                          TextSpan(
                            text: '/182',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Buy remaining cards and complete your collection',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiary,
                      fontSize: 11,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: AppSizer.getHeight(context, 13.0),
                    ),
                    child: const LightButtonWidget(),
                  )
                ],
              ),
            )
          ],
        ),
        CardNameWidget(
          primaryTitile: 'Cards owned from set',
          width: 302,
        ),
      ],
    );
  }
}
