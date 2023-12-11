
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../features/more_options/presentation/widgets/build_cutom_divider.dart';

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
