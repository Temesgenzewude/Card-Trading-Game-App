import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class CustomCardNameWidget extends StatelessWidget {
  const CustomCardNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizer.getWidth(context, 360),
      height: 67,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF8ECAE6), Color(0xFF219EBC)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x7F000000),
            blurRadius: 8,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: AppSizer.getWidth(context, 20)),
        child: Wrap(
          runSpacing: -12,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Your cards from Card set',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'InterBold',
                ),
              ),
            ),
            SizedBox(
              width: AppSizer.getWidth(context, 80),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '80',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: AppSizer.getWidth(context, 32),
                        fontFamily: 'InterRegular',
                      ),
                    ),
                    TextSpan(
                      text: '/182',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: AppSizer.getWidth(context, 12),
                        fontFamily: 'InterRegular',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
