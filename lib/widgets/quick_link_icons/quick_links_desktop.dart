import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hammad_butt/utils/constants/colors.dart';

class HQuickLinksDesktop extends StatefulWidget {
  final FaIconData linkIcon;
  const HQuickLinksDesktop({super.key, required this.linkIcon});

  @override
  State<HQuickLinksDesktop> createState() => _HQuickLinksState();
}

class _HQuickLinksState extends State<HQuickLinksDesktop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => setState(() {
          isHover = true;
        }),
        onExit: (event) => setState(() {
          isHover = false;
        }),
        child: AnimatedContainer(
          duration: Duration(microseconds: 300),
          width: isHover ? 38 : 38,
          height: isHover ? 38 : 38,
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: isHover ? 6 : 4,
                offset: Offset(0, isHover ? 8 : 6),
                color: Colors.black.withValues(alpha: isHover ? 0.24 : 0.34),
              ),
            ],
            color: isHover
                ? HColors.primaryText
                : Colors.white.withValues(alpha: 0.18),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(4),
              child: FaIcon(
                widget.linkIcon,
                size: 18,
                color: isHover ? HColors.background : HColors.primaryText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
