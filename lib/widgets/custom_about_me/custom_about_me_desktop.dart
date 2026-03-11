import 'package:flutter/material.dart';
import 'package:hammad_butt/utils/constants/colors.dart';
import 'package:hammad_butt/utils/styles/buttons/elevated_button.dart';
import 'package:solar_icons/solar_icons.dart';

class HCustomAboutMe extends StatelessWidget {
  const HCustomAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --- ABOUT ME --- //
            Padding(
              padding: const EdgeInsets.only(top: 34.0),
              child: Text(
                'ABOUT ME',
                style: TextStyle(
                  color: HColors.primaryText,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            // --- UI/UX Designer for SaaS & Mobile App | Flutter Developer --- //
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                'UI/UX Designer for SaaS & Mobile App | Flutter Developer',
                style: TextStyle(
                  color: HColors.secondaryText,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            SizedBox(height: 10),

            Container(
              width: 580,
              height: 1,
              decoration: BoxDecoration(
                color: HColors.primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ],
        ),

        SizedBox(height: 34),

        // ---- Introduction (Discription) ---- //
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              style: TextStyle(
                color: HColors.primaryText,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'I design and build scalable SaaS and mobile app interfaces that are not only visually refined but technically implementation-ready.\n\n',
                ),

                //
                //
                TextSpan(
                  text:
                      'With 4 years of experience, I specialize in transforming product ideas into structured UX systems and clean Flutter front-end architecture.\n\n',
                ),

                //
                //
                TextSpan(
                  text: 'What makes me different?\n',
                  style: TextStyle(
                    color: HColors.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      '1.I don\'t just design screens - I design systems.\n2.I understand both UX strategy and Flutter implementation.\n3.I focus on ability, performance, and long-term scalability.\n\n',
                ),

                //
                //
                TextSpan(
                  text: 'My expertise includes:\n',
                  style: TextStyle(
                    color: HColors.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      '1.SaaS dashboard UI/UX.\n2.Mobile app interface design.\n3.Design system in Figma.\n4.Flutter UI implementation.\n5.State management integration\n6. Clean, maintainable front-end architecture.\n\n',
                ),

                //
                //
                TextSpan(
                  text:
                      'If your building a startup MVP, improving product usability, or need pixel-accurate FLutter UI, I can help you execute it with precision.',
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 34),

        // ---- CTA Button (Download Resume) ---- //
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HElevatedButton(
              onTap: () {},
              buttonColor: HColors.primaryButton,
              buttonPaddingHor: 24,
              buttonPaddingVer: 16,
              textWeight: FontWeight.w800,
              text: 'Download Resume',
              textColor: HColors.background,
              textSize: 16,
              borderRadius: 12,
              icon: SolarIconsBold.downloadMinimalistic,
              iconColor: HColors.background,
              iconSize: 18,
            ),
          ],
        ),
      ],
    );
  }
}
