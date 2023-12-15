import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  TextButtonWidget({
    super.key,
    required this.buttonText,
  });

  String buttonText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: const Color(0xFF219EBC), // Border color
            width: 1.0, // Border width
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
              color: Colors.black, fontSize: 10, fontFamily: 'InterRegular'),
        ),
      ),
    );
  }
}
