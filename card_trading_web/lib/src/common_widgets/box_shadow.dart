import 'package:flutter/material.dart';

BoxShadow boxShadow() {
  return const BoxShadow(
    color: Color(0x3F000000),
    blurRadius: 8,
    offset: Offset(0, 6),
    spreadRadius: 0,
  );
}

BoxShadow boxShadow2() {
  return BoxShadow(
    color: Colors.black.withOpacity(0.5),
    offset: const Offset(0, 4),
    blurRadius: 4,
    spreadRadius: 1,
  );
}
