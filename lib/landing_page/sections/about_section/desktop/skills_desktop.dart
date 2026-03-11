import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hammad_butt/utils/constants/colors.dart';
import 'package:hammad_butt/widgets/skills_animated_containers/animated_skill_container.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text
        Text(
          'SKILLS',
          style: TextStyle(
            color: HColors.primaryText,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),

        SizedBox(height: 34),

        // Circle Containers
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HSkillCounter(
              percentage: 96,
              title: 'UX',
              icon: FontAwesomeIcons.userGear,
            ),

            SizedBox(width: 34),

            HSkillCounter(
              percentage: 97,
              title: 'UI',
              icon: FontAwesomeIcons.userPen,
            ),

            SizedBox(width: 34),

            HSkillCounter(
              percentage: 94,
              title: 'Figma',
              icon: FontAwesomeIcons.figma,
            ),

            SizedBox(width: 34),

            HSkillCounter(
              percentage: 54,
              title: 'Flutter',
              icon: FontAwesomeIcons.flutter,
            ),
          ],
        ),
      ],
    );
  }
}
