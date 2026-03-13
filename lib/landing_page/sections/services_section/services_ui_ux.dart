import 'package:flutter/material.dart';
import 'package:hammad_butt/widgets/services_container/desktop/services_container_desktop.dart';

class ServicesUiUx extends StatelessWidget {
  const ServicesUiUx({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // --- Wireframing Service --- //
            HServicesContainerDesktop(
              iconUrl: 'assets/logos/wireframe.png',
              mainHeading: 'Wireframig',
              discription:
                  'Low-fidelity structured layouts that define use flows, content hierarchy, and corefunctionality before visual design.',
            ),

            SizedBox(width: 24),

            // --- High-Fidelity Design Service --- //
            HServicesContainerDesktop(
              iconUrl: 'assets/logos/highFedility.png',
              mainHeading: 'High-fidelity Design',
              discription:
                  'Pixel-perfect, interactive mockups with refined visuals,typography, and brand alignment.',
            ),

            SizedBox(width: 24),

            // --- Design System Service --- //
            HServicesContainerDesktop(
              iconUrl: 'assets/logos/system.png',
              mainHeading: 'Design System',
              discription:
                  'Scalable components libraries with consistent styles, tokens, and reusable UI patterns.',
            ),

            SizedBox(width: 24),

            // --- Responsive Design Service --- //
            HServicesContainerDesktop(
              iconUrl: 'assets/logos/response.png',
              mainHeading: 'Responsive Design',
              discription:
                  'Adaptive interfaces optimized for seamless performance across mobile, tablets, and desktops.',
            ),
          ],
        ),
      ),
    );
  }
}
