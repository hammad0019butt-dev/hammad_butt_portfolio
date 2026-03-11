import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hammad_butt/utils/constants/colors.dart';
import 'package:hammad_butt/widgets/skills_animated_containers/animated_skill_container.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text
        Text(
          'SKILLS',
          style: TextStyle(
            color: HColors.primaryColor,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),

        SizedBox(height: 34),

        // Circle Containers
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  HSkillCounter(
                    percentage: 96,
                    title: 'UX',
                    icon: FontAwesomeIcons.userGear,
                  ),

                  SizedBox(height: 34),

                  HSkillCounter(
                    percentage: 97,
                    title: 'UI',
                    icon: FontAwesomeIcons.userPen,
                  ),
                ],
              ),

              SizedBox(width: 34),

              Column(
                children: [
                  HSkillCounter(
                    percentage: 94,
                    title: 'Figma',
                    icon: FontAwesomeIcons.figma,
                  ),

                  SizedBox(height: 34),

                  HSkillCounter(
                    percentage: 54,
                    title: 'Flutter',
                    icon: FontAwesomeIcons.flutter,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
