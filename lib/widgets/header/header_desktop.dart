import 'package:flutter/material.dart';
import 'package:hammad_butt/widgets/header.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktop();
}

class _HeaderDesktop extends State<HeaderDesktop> {
  bool isHover = false;
  int? hoverIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Logo
        GestureDetector(
          onTap: (){},
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: CircleAvatar(
              radius: 34,
              child: Image.asset('assets/logos/LOGO.png', fit: BoxFit.fill),
            ),
          ),
        ),

        Spacer(),

        // Hyper Links
        HHeader(
          hoveredIndex: hoverIndex,
          onHover: (index) => setState(() {
            hoverIndex = index;
          }),
          onExit: () => setState(() {
            hoverIndex = null;
          }),
        ),
      ],
    );
  }
}
