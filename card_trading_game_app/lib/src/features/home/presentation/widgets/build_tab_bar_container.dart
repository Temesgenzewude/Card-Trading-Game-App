import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/size_convertor.dart';
import 'build_tab_bar_for_home_page.dart';

class TabBarContainer extends StatelessWidget {
  const TabBarContainer({
    super.key,
    required this.selectedCard,
    required this.cardGames,
    required this.tabController,
  });

  final ValueNotifier<String> selectedCard;
  final List<String> cardGames;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppSizer.getHeight(context, 34),
      ),
      child: Container(
        height: AppSizer.getHeight(context, 120),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
        ),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.only(
                left: AppSizer.getWidth(context, 175), right: 65),
            child: Container(
              height: AppSizer.getHeight(context, 80),
              width: AppSizer.getWidth(context, 180),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: AppSizer.getWidth(context, 10),
                      right: AppSizer.getWidth(
                        context,
                        15,
                      ),
                      bottom: AppSizer.getHeight(
                        context,
                        10,
                      )),
                  child: Image.asset(
                    'assets/images/logo_images/pokellector_logo.png',
                    height: AppSizer.getHeight(context, 80),
                    width: AppSizer.getWidth(context, 40),
                  ),
                ),
                DropdownButton(
                    // isDense: true,
                    underline: Container(),
                    padding: EdgeInsets.only(
                        left: AppSizer.getWidth(context, 10),
                        right: AppSizer.getWidth(context, 10)),
                    value: selectedCard.value,
                    style: TextStyle(
                        color: AppColors.darkReddishTextColor,
                        fontSize: AppSizer.getHeight(context, 20),
                        fontFamily: 'InterBold'),
                    dropdownColor: Theme.of(context).colorScheme.secondary,

                    // Down Arrow Icon
                    icon: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.arrow_drop_down,
                          size: 20, color: AppColors.darkPurplishTextColor),
                    ),
                    items: cardGames.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (value) {
                      selectedCard.value = value ?? "";
                    })
              ]),
            ),
          ),
          BuildTabBarForHomePage(tabController: tabController),
        ]),
      ),
    );
  }
}
