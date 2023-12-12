import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  TextButtonWidget({
    super.key,
    required this.buttonText,
  });

  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue, // Border color
          width: 1.0, // Border width
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextButton(
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
