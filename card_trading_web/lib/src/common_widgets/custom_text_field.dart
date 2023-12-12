// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.textEditingController,
    this.isMultiline = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.isPhoneNumber = false,
    this.radius = 16,
  });

  final TextEditingController textEditingController;
  bool isMultiline;
  int maxLines;
  int minLines;
  bool isPhoneNumber;
  double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: AppColors.borderColor,
        ),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 6),
            blurRadius: 8,
            spreadRadius: 0,
          ),
        ],
      ),
      width: double.infinity,
      child: TextField(
        maxLines: maxLines,
        minLines: minLines,
        keyboardType: isMultiline
            ? TextInputType.multiline
            : isPhoneNumber
                ? TextInputType.phone
                : TextInputType.text,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(color: Colors.greenAccent, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide:
                const BorderSide(color: AppColors.borderColor, width: 1.0),
          ),
        ),
        controller: textEditingController,
      ),
    );
  }
}
