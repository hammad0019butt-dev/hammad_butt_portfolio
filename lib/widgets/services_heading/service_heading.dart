import 'package:flutter/material.dart';
import 'package:hammad_butt/utils/constants/colors.dart';

class HServicesHeading extends StatelessWidget {
  const HServicesHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 34.0),
      child: Column(
        children: [
          // --- SERVICES (Text --- //
          Text(
            'SERVICES',
            style: TextStyle(
              color: HColors.primaryText,
              fontWeight: FontWeight.w700,
              fontSize: 32,
            ),
          ),

          SizedBox(height: 2),

          // Custom Line
          Container(
            width: 130,
            height: 1,
            decoration: BoxDecoration(
              color: HColors.primaryColor,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ],
      ),
    );
  }
}
