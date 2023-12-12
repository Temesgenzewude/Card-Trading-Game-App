import 'package:card_trading_web/src/constants/icons.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardWithImage extends ConsumerWidget {
  const CardWithImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: AppSizer.getWidth(context, 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage(
                  'assets/images/image3.png',
                ),
                fit: BoxFit.contain,
              ),
              // Image.asset(

              //   'assets/images/image3.png',
              //   height: AppSizer.getHeight(context, 100),
              //   width: AppSizer.getWidth(context, 100),
              // ),
              Positioned(
                  top: AppSizer.getHeight(context, 10),
                  left: AppSizer.getWidth(context, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onTertiaryContainer,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text('15% off',
                        style: TextStyle(color: Colors.white)),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppIcons.yellowStar,
              AppIcons.yellowStar,
              AppIcons.yellowStar,
              AppIcons.yellowStar,
              AppIcons.yellowStar,
              Text(
                '(521)',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),
          Flexible(
              child: Text(
            'Card name',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          )),
          Flexible(
              child: Text(
            r'$0.85',
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }
}
