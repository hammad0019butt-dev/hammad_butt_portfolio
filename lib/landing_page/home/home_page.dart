import 'package:flutter/material.dart';
import 'package:hammad_butt/landing_page/sections/about_section/desktop/skills_desktop.dart';
import 'package:hammad_butt/landing_page/sections/about_section/mobile/skills_mobile.dart';
import 'package:hammad_butt/landing_page/sections/hero_section/desktop/hero_section_desktop.dart';
import 'package:hammad_butt/landing_page/sections/hero_section/mobile/hero_section_mobile.dart';
import 'package:hammad_butt/utils/constants/colors.dart';
import 'package:hammad_butt/utils/styles/custom_images/custom_assets.dart';
import 'package:hammad_butt/widgets/app_drower/app_drawer.dart';
import 'package:hammad_butt/widgets/custom_about_me/custom_about_me_desktop.dart';
import 'package:hammad_butt/widgets/custom_about_me/custom_about_me_mobile.dart';
import 'package:hammad_butt/widgets/header/header_desktop.dart';
import 'package:hammad_butt/widgets/header/header_mobile.dart';
import 'package:hammad_butt/widgets/skills_animated_containers/animated_skill_container.dart';
import 'package:solar_icons/solar_icons.dart';

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

                          SizedBox(height: 44),
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
                        decoration: BoxDecoration(color: HColors.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),

              // ----------------- SERVICES PAGE -------------- //
              Container(
                width: double.maxFinite,
                height: 850,
                color: HColors.container,
              ),

              // ----------------- WORKS PAGE ----------------- //
              SizedBox(width: double.maxFinite, height: 850),

              // ----------------- CONTACT PAGE --------------- //
              Container(
                width: double.maxFinite,
                height: 850,
                color: HColors.container,
              ),

              // ----------------- FOOTER PAGE ---------------- //
              SizedBox(width: double.maxFinite, height: 160),
              //
            ],
          ),
        );
      },
    );
  }
}
