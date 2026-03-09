// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hammad_butt/utils/constants/colors.dart';
import 'package:hammad_butt/utils/constants/nav_items.dart';
import 'package:solar_icons/solar_icons.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});

  List<IconData> icons = [
    SolarIconsOutline.home,
    SolarIconsOutline.crownStar,
    SolarIconsOutline.penNewRound,
    SolarIconsOutline.backpack,
    SolarIconsOutline.phone,
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 240,
      backgroundColor: HColors.background,
      child: ListView(
        children: [
          // Back Button
          Padding(
            padding: const EdgeInsets.only(top: 24.0, right: 24.0, left: 6.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close, color: HColors.primaryText),
              ),
            ),
          ),

          SizedBox(height: 14),

          Divider(height: 2, color: HColors.container),

          // Nav Items
          for (int i = 0; i < icons.length; i++)
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 4, right: 4),
              child: ListTile(
                onTap: () {},
                leading: Icon(
                  icons[i],
                  color: HColors.primaryColor,
                  size: 20,
                  weight: 4,
                ),
                title: Text(
                  navItemsMobile[i],
                  style: TextStyle(
                    color: HColors.primaryText,
                    fontSize: 18,
                    letterSpacing: 1,
                    fontFamily: 'Inconsolata',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
