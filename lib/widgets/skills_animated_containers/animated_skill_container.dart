import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hammad_butt/utils/constants/colors.dart';

class HSkillCounter extends StatefulWidget {
  final int percentage;
  final String title;
  final FaIconData icon;

  const HSkillCounter({
    super.key,
    required this.percentage,
    required this.title,
    required this.icon,
  });

  @override
  State<HSkillCounter> createState() => _HSkillCounterState();
}

class _HSkillCounterState extends State<HSkillCounter>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    animation =
        Tween<double>(
          begin: 0,
          end: widget.percentage / 100,
        ).animate(controller)..addListener(() {
          setState(() {});
        });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    int value = (animation.value * 100).toInt();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: HColors.container,
                borderRadius: BorderRadius.circular(100),
              ),
              child: CircularProgressIndicator(
                color: HColors.primaryColor,
                value: animation.value,
                strokeWidth: 6,
              ),
            ),

            Center(child: FaIcon(widget.icon, size: 44)),
          ],
        ),

        const SizedBox(height: 10),

        Text(
          "$value%",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 2),

        Text(
          widget.title,
          style: TextStyle(fontSize: 18, color: HColors.secondaryText),
        ),
      ],
    );
  }
}
