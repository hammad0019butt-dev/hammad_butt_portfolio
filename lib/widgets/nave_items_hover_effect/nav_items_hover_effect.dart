import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hammad_butt/utils/constants/colors.dart';

class NavItem extends StatelessWidget {
  final String text;
  final bool isHovered;
  final VoidCallback onTap;
  final void Function(PointerEnterEvent)? onEnter;
  final void Function(PointerExitEvent)? onExit;

  const NavItem({
    super.key,
    required this.text,
    required this.isHovered,
    required this.onTap,
    required this.onEnter,
    required this.onExit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: MouseRegion(
        onEnter: onEnter,
        onExit: onExit,
        cursor: SystemMouseCursors.click,
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  color: isHovered
                      ? HColors.primaryText
                      : HColors.secondaryText,
                  fontFamily: 'Inconsolata',
                  fontSize: isHovered ? 18 : 16,
                  letterSpacing: 1.5,
                  fontWeight: isHovered ? FontWeight.w600 : FontWeight.w500,
                ),
                child: Text(text),
              ),
              const SizedBox(height: 2),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 20,
                height: 4,
                decoration: BoxDecoration(
                  color: isHovered ? HColors.primaryColor : Colors.transparent,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
