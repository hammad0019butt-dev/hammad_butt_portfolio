import 'package:flutter/material.dart';
import 'package:hammad_butt/landing_page/sections/about_section/desktop/skills_desktop.dart';
import 'package:hammad_butt/landing_page/sections/about_section/mobile/skills_mobile.dart';
import 'package:hammad_butt/landing_page/sections/hero_section/desktop/hero_section_desktop.dart';
import 'package:hammad_butt/landing_page/sections/hero_section/mobile/hero_section_mobile.dart';
import 'package:hammad_butt/landing_page/sections/services_section/services_flutter_dev.dart';
import 'package:hammad_butt/landing_page/sections/services_section/services_ui_ux.dart';
import 'package:hammad_butt/utils/constants/colors.dart';
import 'package:hammad_butt/utils/styles/custom_images/custom_assets.dart';
import 'package:hammad_butt/widgets/app_drower/app_drawer.dart';
import 'package:hammad_butt/widgets/custom_about_me/custom_about_me_desktop.dart';
import 'package:hammad_butt/widgets/custom_about_me/custom_about_me_mobile.dart';
import 'package:hammad_butt/widgets/header/header_desktop.dart';
import 'package:hammad_butt/widgets/header/header_mobile.dart';
import 'package:hammad_butt/widgets/services_heading/service_heading.dart';
import 'package:hammad_butt/widgets/services_heading/service_heading_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          // Drower
          endDrawer: constraints.maxWidth >= 600.0 ? null : AppDrawer(),
          // Body
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //
              // ----------------- HOME PAGE ------------------ //
              SizedBox(
                width: double.maxFinite,
                height: constraints.maxWidth >= 600.0 ? 850 : 850,
                child: Stack(
                  children: [
                    //
                    // --- Background Image --- //
                    SizedBox(
                      height: constraints.maxWidth >= 900.0 ? 950 : 850,
                      width: double.infinity,
                      child: CustomImage(
                        imgUrl: 'backgroundImage.jpg',
                        imgBoxFit: BoxFit.fill,
                      ),
                    ),

                    // ---- Coulmn (Header, HeroSection) ---- //
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //
                        // --------------- Header --------------- //
                        if (constraints.maxWidth >= 600.0)
                          //
                          // Desktop Header
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 44.0,
                              right: 0.0,
                              top: 34.0,
                            ),
                            child: HeaderDesktop(),
                          )
                        else
                          //
                          // Mobile Header
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 24.0,
                              horizontal: 16,
                            ),
                            child: HeaderMobile(
                              scaffoldKey: () {
                                scaffoldKey.currentState?.openEndDrawer();
                              },
                            ),
                          ),

                        SizedBox(height: 54),

                        // ------ Hero Secton ------ //
                        constraints.maxWidth >= 600.0
                            ? HeroSectionDesktop()
                            : HHeroSectionMonile(),
                      ],
                    ),

                    // --- Custom Line --- //
                    Positioned(
                      bottom: 1,
                      child: Container(
                        width: constraints.maxWidth >= 600.0 ? 1900 : 800,
                        height: 2,
                        decoration: BoxDecoration(color: HColors.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),

              // ----------------- ABOUT PAGE ----------------- //
              SizedBox(
                width: double.maxFinite,
                height: constraints.maxWidth >= 600.0 ? 1010 : 1180,
                child: Stack(
                  children: [
                    // ------ BG Water Mark ------ //
                    constraints.maxWidth >= 600.0
                        ? Center(
                            child: Image.asset(
                              'assets/images/WaterMarkDesktop.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        : Center(
                            child: Image.asset(
                              'assets/images/WaterMarkMobile.png',
                              fit: BoxFit.cover,
                            ),
                          ),

                    SizedBox(height: constraints.maxWidth >= 600.0 ? 34 : 24),
                    //
                    // ------------ ABOUT ME / Skills  ---------- //
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // ---- About Me (Main Heading) ---- //
                          constraints.maxWidth >= 600.0
                              ? HCustomAboutMe()
                              : HCustomAboutMeMobile(),

                          SizedBox(height: 26),

                          Container(
                            width: 400,
                            height: 4,
                            decoration: BoxDecoration(color: HColors.container),
                          ),

                          SizedBox(height: 22),
                          // ---- Skills (Row Widgets) ---- //
                          constraints.maxWidth >= 600.0
                              ? SkillsDesktop()
                              : SkillsMobile(),
                        ],
                      ),
                    ),

                    Positioned(
                      bottom: 1,
                      child: Container(
                        width: constraints.maxWidth >= 600.0 ? 1900 : 800,
                        height: 2,
                        decoration: BoxDecoration(color: HColors.container),
                      ),
                    ),
                  ],
                ),
              ),

              // ----------------- SERVICES PAGE -------------- //
              SizedBox(
                width: double.maxFinite,
                height: 950,
                child: Column(
                  children: [
                    // ---- Main Heading (SERVICES) ---- //
                    constraints.maxWidth >= 600.0
                        ? HServicesHeading()
                        : HServicesHeadingMobile(),

                    SizedBox(height: constraints.maxWidth >= 600.0 ? 34 : 24),

                    // ---- UI/UX Design Services ---- //
                    Column(
                      children: [
                        //
                        // --- UI/UX Design (Web & Mobile) --- //
                        Text(
                          'UI/UX Design (Web & App)',
                          style: TextStyle(
                            fontSize: constraints.maxWidth >= 600.0 ? 24 : 18,
                            color: HColors.secondaryText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SizedBox(
                          height: constraints.maxWidth >= 600.0 ? 20 : 16,
                        ),

                        // ---GridView for list widgets --- //
                        ServicesUiUx(),
                      ],
                    ),

                    SizedBox(height: constraints.maxWidth >= 600.0 ? 34 : 24),

                    // ---- Flutter Development Services ---- //
                    Column(
                      children: [
                        //
                        // --- Flutter App Development (Heading) --- //
                        Text(
                          'Flutter App Development',
                          style: TextStyle(
                            fontSize: constraints.maxWidth >= 600.0 ? 24 : 18,
                            color: HColors.secondaryText,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SizedBox(
                          height: constraints.maxWidth >= 600.0 ? 24 : 18,
                        ),

                        // ---GridView for list widgets --- //
                        ServicesFlutterDev(),
                      ],
                    ),
                  ],
                ),
              ),

              // ----------------- WORKS PAGE ----------------- //
              Container(
                width: double.maxFinite,
                height: 850,
                color: HColors.container,
              ),

              // ----------------- Contact PAGE ---------------- //
              SizedBox(width: double.maxFinite, height: 850),

              // ----------------- FOOTER PAGE --------------- //
              Container(
                width: double.maxFinite,
                height: 160,
                color: HColors.container,
              ),
              //
            ],
          ),
        );
      },
    );
  }
}
