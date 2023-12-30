import 'package:flutter/material.dart';

class SettingsContainer extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? rightColumnWidget;
  const SettingsContainer({super.key, this.onPressed, this.rightColumnWidget});

  @override
  Widget build(BuildContext context) {
    return onPressed != null
        ? InkWell(
            onTap: onPressed,
            child: Container(
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
