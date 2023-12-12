import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardWithImage extends ConsumerWidget {
  const CardWithImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: AppSizer.getHeight(context, 100),
            
      color: Colors.black,
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text('15% off'),
              )),
              Image.asset(
                'assets/images/image3.png',
                height: AppSizer.getHeight(context, 60),
                width: AppSizer.getWidth(context, 50),
              ),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Text('521')
            ],
          ),
          const Text('Card name'),
          const Text(r'$0.85')
        ],
      ),
    );
  }
}
