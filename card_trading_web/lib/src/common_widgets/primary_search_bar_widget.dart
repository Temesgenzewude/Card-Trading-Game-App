// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/size_convertor.dart';

class PrimarySearchBar extends StatelessWidget {
  PrimarySearchBar({super.key, required this.hintText});

  String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 0.1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Color(0xFF219EBC),
          ),
          borderRadius: BorderRadius.circular(32),
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
      child: SizedBox(
        width: AppSizer.getWidth(context, 400),
        height: 50,
        child: SearchBar(
          trailing: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 20,
                ),
                Icon(
                  Icons.filter_list,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 20,
                )
              ],
            ),
          ],
          surfaceTintColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          backgroundColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          overlayColor: const MaterialStatePropertyAll(
            Colors.white,
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.only(
              left: AppSizer.getWidth(context, 10),
              // top: 2,
              bottom: 3,
              right: AppSizer.getHeight(context, 20),
            ),
          ),
          elevation: const MaterialStatePropertyAll(1),
          side: MaterialStateProperty.all(
            BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          hintText: hintText,
          hintStyle: MaterialStatePropertyAll(
            TextStyle(
              color: const Color(0xFF3F2E3E).withOpacity(0.5),
              fontSize: 12,
              fontFamily: 'InterRegular',
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
