import 'package:flutter/material.dart';

BoxShadow boxShadow() {
  return BoxShadow(
    color: Colors.black.withOpacity(0.25),
    offset: const Offset(0, 4),
    blurRadius: 4,
    spreadRadius: 1,
  );
}