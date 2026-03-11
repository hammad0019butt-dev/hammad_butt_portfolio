import 'package:flutter/material.dart';
import 'package:hammad_butt/utils/constants/colors.dart';
import 'package:hammad_butt/utils/styles/buttons/elevated_button.dart';
import 'package:solar_icons/solar_icons.dart';

class HCustomAboutMeMobile extends StatelessWidget {
  const HCustomAboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --- ABOUT ME --- //
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Text(
                'ABOUT ME',
                style: TextStyle(
                  color: HColors.primaryText,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            // --- UI/UX Designer for SaaS & Mobile App | Flutter Developer --- //
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                'UI/UX Designer for SaaS & Mobile App |\nFlutter Developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: HColors.secondaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            SizedBox(height: 6),

            Container(
              width: 320,
              height: 1,
              decoration: BoxDecoration(
                color: HColors.primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ],
        ),

        SizedBox(height: 24),

        // ---- Introduction (Discription) ---- //
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              style: TextStyle(
                color: HColors.primaryText,
                fontSize: 14,
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

        SizedBox(height: 24),

        // ---- CTA Button (Download Resume) ---- //
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HElevatedButton(
              onTap: () {},
              buttonColor: HColors.primaryButton,
              buttonPaddingHor: 20,
              buttonPaddingVer: 14,
              textWeight: FontWeight.w800,
              text: 'Download Resume',
              textColor: HColors.background,
              textSize: 16,
              borderRadius: 12,
              icon: SolarIconsBold.download,
              iconColor: HColors.background,
              iconSize: 18,
            ),
          ],
        ),
      ],
    );
  }
}
