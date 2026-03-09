import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hammad_butt/utils/constants/colors.dart';

class HQuickLinksMobile extends StatefulWidget {
  final FaIconData linkIcon;
  const HQuickLinksMobile({super.key, required this.linkIcon});

  @override
  State<HQuickLinksMobile> createState() => _HQuickLinksMobileState();
}

class _HQuickLinksMobileState extends State<HQuickLinksMobile> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
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
              width: constraints.maxWidth >= 600.0 ? 38 : 32,
              height: constraints.maxWidth >= 600.0 ? 38 : 32,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    blurRadius: isHover ? 6 : 4,
                    offset: Offset(0, isHover ? 8 : 4),
                    color: Colors.black.withValues(
                      alpha: isHover ? 0.24 : 0.34,
                    ),
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
                    size: constraints.maxWidth >= 600.0 ? 18 : 16,
                    color: isHover ? HColors.background : HColors.primaryText,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
