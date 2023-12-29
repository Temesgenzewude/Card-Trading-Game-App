import 'package:flutter/material.dart';

import '../../../../../../utils/size_convertor.dart';

class CardListView extends StatelessWidget {
  const CardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 41,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizer.getWidth(context, 60),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: AppSizer.getWidth(context, 100)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/image3.png',
                            fit: BoxFit.fill,
                            height: 81,
                            width: 58,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            '#3-Card Name',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: AppSizer.getWidth(context, 5)),
                          child: const Text(
                            'Car not owned',
                          ),
                        ),
                        const Icon(
                          Icons.check_circle,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 41),
              child: Container(
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.5,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF219EBC),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
