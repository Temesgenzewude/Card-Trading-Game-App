import 'package:flutter/material.dart';

import '../../../../common_widgets/primary_search_bar_widget.dart';
import '../../../../constants/colors.dart';
import '../../../../utils/size_convertor.dart';
import '../widgets/build_cutom_divider.dart';

class MoreOptionsScreen extends StatelessWidget {
  const MoreOptionsScreen({super.key});

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
                buildProfileNameAndProfilePic(),
              ],
            ),
          ),
        ]),
      )),
    );
  }

  Row buildProfileNameAndProfilePic() {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 60, right: 15),
          child: Text("Hello! Username",
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.appBarBackgroundColor,
                  fontFamily: 'InterRegular')),
        ),
        PopupMenuButton(
          shadowColor: AppColors.appBarBackgroundColor,
          surfaceTintColor: Colors.white,
          // padding: EdgeInsets.only(top: 0),
          constraints: const BoxConstraints(maxWidth: 200, maxHeight: 200),
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
                onTap: () {
                  print("Profile");
                },
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
                onTap: () {
                  print("My Collections");
                },
                title: 'My Collection',
                icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset(
                    'assets/images/icon_images/collection_green.png',
                    // color: AppColors.appBarBackgroundColor,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              buildMenuItem(
                  onTap: () {
                    print("Logout");
                  },
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
          },
        ),
      ],
    );
  }

  PopupMenuItem<dynamic> buildMenuItem(
      {required String title,
      required Widget icon,
      bool showDivider = true,
      required Function() onTap}) {
    return PopupMenuItem(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: showDivider ? 10 : 0),
            child: Row(
              children: [
                icon,
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'InterRegular',
                        color: AppColors.appBarBackgroundColor),
                  ),
                ),
              ],
            ),
          ),
          if (showDivider) const BuildCustomDivider(),
        ],
      ),
    );
  }
}
