import 'package:flutter/material.dart';

import 'src/features/home/presentation/screens/home_screen.dart';
import 'src/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Trading Game App',
      theme: lightTheme,
      home: const HomeScreen(),
    );
  }
}
