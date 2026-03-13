import 'package:flutter/material.dart';
import 'package:hammad_butt/utils/constants/colors.dart';

class HServicesContainerDesktop extends StatefulWidget {
  final String iconUrl;
  final String mainHeading;
  final String discription;
  const HServicesContainerDesktop({super.key, required this.iconUrl, required this.mainHeading, required this.discription});

  @override
  State<HServicesContainerDesktop> createState() =>
      _HServicesContainerDesktopState();
}

class _HServicesContainerDesktopState extends State<HServicesContainerDesktop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        isHover = true;
      }),
      onExit: (event) => setState(() {
        isHover = false;
      }),
      child: AnimatedContainer(
        duration: Duration(microseconds: 1000),
        height: 260,
        width: 250,
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: HColors.container,
          borderRadius: BorderRadius.circular(isHover ? 20 : 16),
          border: Border.all(
            color: isHover ? HColors.primaryColor : Colors.transparent,
            width: 2,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset(widget.iconUrl, scale: 5.8),

              SizedBox(height: 18),

              // Heading
              Text(
                widget.mainHeading,
                style: TextStyle(
                  color: HColors.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 2),

              // Discription
              Text(
                widget.discription,
                style: TextStyle(
                  color: HColors.secondaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
