import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/size_convertor.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    required this.buttonName,
    required this.buttonRadius,
    this.onPressed,
  });

  String buttonName;
  double buttonRadius;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 10),
          vertical: AppSizer.getHeight(context, 10),
        ),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF8ECAE6), Color(0xFF219EBC)],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 8,
              offset: Offset(0, 6),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Text(
            buttonName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'InterRegular',
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
