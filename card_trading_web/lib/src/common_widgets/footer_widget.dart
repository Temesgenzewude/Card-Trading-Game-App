import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routing/routes.dart';
import '../utils/size_convertor.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: AppSizer.getWidth(context, 155),
          top: AppSizer.getHeight(context, 20),
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                context.go('/${AppRoutes.DesktopContactUsScreen.name}');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: Text(
                  'Contact us',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontFamily: 'InterRegular',
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                context.go('/${AppRoutes.DesktopTermsScreen.name}');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: Row(
                  children: [
                    Text(
                      '\u2022 ',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      'Terms of use',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontFamily: 'InterRegular',
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                context.go('/${AppRoutes.DesktopPrivacyScreen.name}');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                child: Row(
                  children: [
                    Text('\u2022 ',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontFamily: 'InterRegular',
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
