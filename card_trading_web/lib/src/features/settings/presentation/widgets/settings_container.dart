import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class SettingsContainer extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? rightColumnWidget;
  final String title;
  const SettingsContainer(
      {super.key, this.onPressed, this.rightColumnWidget, required this.title});

  @override
  Widget build(BuildContext context) {
    return onPressed != null
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: InkWell(
              onTap: onPressed,
              child: Container(
                height: 77,
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF219EBC)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 8,
                      offset: Offset(0, 6),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    rightColumnWidget != null
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: rightColumnWidget,
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          )
        : Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFF219EBC)),
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 8,
                  offset: Offset(0, 6),
                  spreadRadius: 0,
                )
              ],
            ),
            child: rightColumnWidget != null
                ? Align(
                    alignment: Alignment.centerRight,
                    child: rightColumnWidget,
                  )
                : Container(),
          );
  }
}
