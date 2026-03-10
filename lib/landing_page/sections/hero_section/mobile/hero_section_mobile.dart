import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hammad_butt/utils/constants/colors.dart';
import 'package:hammad_butt/utils/styles/buttons/elevated_button.dart';
import 'package:hammad_butt/utils/styles/buttons/outlined_button.dart';
import 'package:hammad_butt/widgets/quick_link_icons/quick_links_mobile.dart';
import 'package:hammad_butt/widgets/rich_text/custom_heading_text.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HHeroSectionMonile extends StatelessWidget {
  const HHeroSectionMonile({super.key});

  Future<void> _operUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not Launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // --- Main Headings --- //
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: CustomHeadingText(
            headingLine1: 'Hi I\'am\n',
            fontSizeLine1: 14,
            headingLine2: 'Hammad Butt\n',
            fontSizeLine2: 16,
            headingLine3: 'UI/UX Designer & Flutter Developer',
            fontSizeLine3: 40,
          ),
        ),

        SizedBox(height: 16),

        // --- Image (Hammad Butt) --- //
        SizedBox(
          width: 400,
          child: Center(
            child: Image.asset(
              'assets/images/hammadMobile.png',
              scale: 1,
              fit: BoxFit.cover,
            ),
          ),
        ),

        SizedBox(height: 16),

        // --= Quick Links --- //
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  _operUrl('https://www.linkedin.com/in/hammad-butt-1576203b2/');
                },
                child: HQuickLinksMobile(linkIcon: FontAwesomeIcons.linkedin),
              ),

              SizedBox(width: 16),

              GestureDetector(
                onTap: () {
                  _operUrl('https://www.upwork.com/freelancers/~014b7fdfe597aa027b');
                },
                child: HQuickLinksMobile(linkIcon: FontAwesomeIcons.upwork),
              ),

              SizedBox(width: 16),

              GestureDetector(
                onTap: () {
                  _operUrl('https://www.behance.net/httphammadbutt20');
                },
                child: HQuickLinksMobile(linkIcon: FontAwesomeIcons.behance),
              ),

              SizedBox(width: 16),

              GestureDetector(
                onTap: () {
                  _operUrl('https://github.com/hammad0019butt-dev');
                },
                child: HQuickLinksMobile(linkIcon: FontAwesomeIcons.github),
              ),
            ],
          ),
        ),

        SizedBox(height: 22),

        // --= CTA Buttons --- //
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Row(
            children: [
              // Elevated Button (Hire Me)
              HElevatedButton(
                onTap: () {},
                buttonColor: HColors.primaryButton,
                buttonPaddingHor: 20,
                buttonPaddingVer: 14,
                textWeight: FontWeight.w800,
                text: 'Hire Me',
                textColor: HColors.background,
                textSize: 16,
                borderRadius: 12,
                icon: SolarIconsBold.phone,
                iconSize: 18,
                iconColor: HColors.background,
              ),

              SizedBox(width: 16),

              // Outlined Button (Download Resume)
              HOutlinedButton(
                onTap: () {},
                buttonPaddingHor: 20,
                buttonPaddingVer: 14,
                textWeight: FontWeight.w500,
                text: 'Download Resume',
                textColor: HColors.secondaryText,
                textSize: 16,
                borderRadius: 12,
                borderColor: HColors.secondaryText,
                icon: SolarIconsOutline.downloadMinimalistic,
                iconColor: HColors.secondaryText,
                iconSize: 18,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
