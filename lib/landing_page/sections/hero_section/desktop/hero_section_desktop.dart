import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hammad_butt/utils/constants/colors.dart';
import 'package:hammad_butt/utils/styles/buttons/elevated_button.dart';
import 'package:hammad_butt/utils/styles/buttons/outlined_button.dart';
import 'package:hammad_butt/utils/styles/custom_images/custom_assets.dart';
import 'package:hammad_butt/widgets/quick_link_icons/quick_links_desktop.dart';
import 'package:hammad_butt/widgets/rich_text/custom_heading_text.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSectionDesktop extends StatelessWidget {
  const HeroSectionDesktop({super.key});

  Future<void> _operUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not Launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // --- Main Heading, Quick Links, CTA Butoons --- //
        Padding(
          padding: const EdgeInsets.only(left: 44.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main Heading
              CustomHeadingText(
                headingLine1: 'Hi I\'am\n',
                fontSizeLine1: 16,
                headingLine2: 'Hammad Butt\n',
                fontSizeLine2: 18,
                headingLine3: 'UI/UX Designer &\nFlutter Developer',
                fontSizeLine3: 44,
              ),

              SizedBox(height: 24),

              // Quick Links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _operUrl(
                        'https://www.linkedin.com/in/hammad-butt-1576203b2/',
                      );
                    },
                    child: HQuickLinksDesktop(
                      linkIcon: FontAwesomeIcons.linkedin,
                    ),
                  ),

                  SizedBox(width: 16),

                  GestureDetector(
                    onTap: () {
                      _operUrl(
                        'https://www.upwork.com/freelancers/~014b7fdfe597aa027b',
                      );
                    },
                    child: HQuickLinksDesktop(
                      linkIcon: FontAwesomeIcons.upwork,
                    ),
                  ),

                  SizedBox(width: 16),

                  GestureDetector(
                    onTap: () {
                      _operUrl('https://www.behance.net/httphammadbutt20');
                    },
                    child: HQuickLinksDesktop(
                      linkIcon: FontAwesomeIcons.behance,
                    ),
                  ),

                  SizedBox(width: 16),

                  GestureDetector(
                    onTap: () {
                      _operUrl('https://github.com/hammad0019butt-dev');
                    },
                    child: HQuickLinksDesktop(
                      linkIcon: FontAwesomeIcons.github,
                    ),
                  ),

                  SizedBox(width: 16),
                ],
              ),

              SizedBox(height: 34),

              // CTA Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HElevatedButton(
                    onTap: () {},
                    buttonColor: HColors.primaryButton,
                    buttonPaddingHor: 24,
                    buttonPaddingVer: 16,
                    textWeight: FontWeight.w800,
                    text: 'Hire Me',
                    textColor: HColors.background,
                    textSize: 16,
                    borderRadius: 12,
                    icon: SolarIconsBold.phone,
                    iconColor: HColors.background,
                    iconSize: 18,
                  ),

                  SizedBox(width: 16),

                  HOutlinedButton(
                    onTap: () {},
                    buttonPaddingHor: 24,
                    buttonPaddingVer: 16,
                    textWeight: FontWeight.w500,
                    text: 'Download Resume',
                    textColor: HColors.secondaryText,
                    textSize: 16,
                    borderRadius: 12,
                    borderColor: HColors.secondaryText,
                    icon: SolarIconsOutline.downloadMinimalistic,
                    iconColor: HColors.secondaryText,
                    iconSize: 16,
                  ),
                ],
              ),
            ],
          ),
        ),

        Spacer(),

        // --- Image (Hammad Butt) --- //
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: SizedBox(
            width: 500,
            child: CustomImage(imgUrl: 'hammad.png', imgBoxFit: BoxFit.contain),
          ),
        ),
      ],
    );
  }
}
