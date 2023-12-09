import 'package:flutter/material.dart';

class BrowseSetScreen extends StatefulWidget {
  const BrowseSetScreen({super.key});

  @override
  State<BrowseSetScreen> createState() => _BrowseSetScreenState();
}

class _BrowseSetScreenState extends State<BrowseSetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_images/bg_image.png'),
                fit: BoxFit.cover,
              ),
            )),
      ),
    );
  }
}
