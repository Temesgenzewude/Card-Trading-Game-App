import 'package:card_trading_web/src/common_widgets/primary_search_bar_widget.dart';
import 'package:card_trading_web/src/constants/colors.dart';
import 'package:card_trading_web/src/features/more_options/presentation/responsive/desktop/widgets/build_menu_item.dart';
import 'package:card_trading_web/src/utils/size_convertor.dart';
import 'package:flutter/material.dart';

class MoreOptionsWidget extends StatelessWidget {
  const MoreOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_images/bg_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(
              left: AppSizer.getWidth(context, 365),
              right: AppSizer.getWidth(
                context,
                149,
              ),
              top: AppSizer.getHeight(context, 58),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PrimarySearchBar(
                  hintText: 'Search for cards',
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 60, right: 15),
                  child: Text("Hello! Username",
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.appBarBackgroundColor,
                          fontFamily: 'InterRegular')),
                ),
                PopupMenuButton(
                    surfaceTintColor: Colors.white,
                    constraints:
                        const BoxConstraints(maxWidth: 200, maxHeight: 200),
                    color: Colors.white,
                    position: PopupMenuPosition.under,
                    child: const CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(
                        'assets/images/profile_images/profile_image.png',
                      ),
                    ),
                    itemBuilder: (context) {
                      return [
                        buildMenuItem(
                          title: 'Profile',
                          icon: const SizedBox(
                            height: 24,
                            width: 24,
                            child: Icon(
                              Icons.person_2_outlined,
                              size: 24,
                              color: AppColors.appBarBackgroundColor,
                            ),
                          ),
                        ),
                        buildMenuItem(
                          title: 'My Collection',
                          icon: SizedBox(
                            height: 24,
                            width: 24,
                            child: Image.asset(
                              'assets/images/icon_images/collection.png',
                              // color: AppColors.appBarBackgroundColor,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                        buildMenuItem(
                            title: 'Logout',
                            icon: SizedBox(
                              height: 24,
                              width: 24,
                              child: Image.asset(
                                'assets/images/icon_images/logout-image.png',
                                color: AppColors.appBarBackgroundColor,
                                width: 24,
                                height: 24,
                              ),
                            ),
                            showDivider: false),
                      ];
                    })
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
