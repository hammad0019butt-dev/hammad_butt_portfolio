import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammad_butt/utils/constants/colors.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback scaffoldKey;
  const HeaderMobile({super.key, required this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Logo
        GestureDetector(
          onTap: () {},
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: CircleAvatar(
              radius: 24,
              child: Image.asset('assets/logos/LOGO.png', fit: BoxFit.fill),
            ),
          ),
        ),

        Spacer(),

        // IconButton (for open Drower)
        IconButton(
          onPressed: scaffoldKey,
          icon: Icon(
            CupertinoIcons.list_bullet,
            size: 24,
            color: HColors.primaryText,
          ),
        ),
      ],
    );
  }
}
