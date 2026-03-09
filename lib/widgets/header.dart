import 'package:flutter/material.dart';
import 'package:hammad_butt/widgets/nave_items_hover_effect/nav_items_hover_effect.dart';

class HHeader extends StatelessWidget {
  final int? hoveredIndex;
  final Function(int) onHover;
  final VoidCallback onExit;

  const HHeader({
    super.key,
    required this.hoveredIndex,
    required this.onHover,
    required this.onExit,
  });

  @override
  Widget build(BuildContext context) {
    final navItems = ["Home", "About", "Services", "Works", "Contact"];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(navItems.length, (index) {
        return NavItem(
          text: navItems[index],
          isHovered: hoveredIndex == index,
          onEnter: (_) => onHover(index),
          onExit: (_) => onExit(),
          onTap: (){}
        );
      }),
    );
  }
}
