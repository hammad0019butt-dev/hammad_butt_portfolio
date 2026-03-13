import 'package:flutter/material.dart';
import 'package:hammad_butt/widgets/services_container/desktop/services_container_desktop.dart';

class ServicesFlutterDev extends StatelessWidget {
  const ServicesFlutterDev({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // --- Cross-Platform Service --- //
            HServicesContainerDesktop(
              iconUrl: 'assets/logos/crossPlatform.png',
              mainHeading: 'Cross-Platform Apps',
              discription:
                  'Single code base applications delivering native performance on Android and iOS.',
            ),

            SizedBox(width: 24),

            // --- Clean Architecture Service --- //
            HServicesContainerDesktop(
              iconUrl: 'assets/logos/arch.png',
              mainHeading: 'Clean Architecture',
              discription:
                  'Well-structured maintainable codebase following separation of scalable patterns.',
            ),

            SizedBox(width: 24),

            // --- Responsive UI Service --- //
            HServicesContainerDesktop(
              iconUrl: 'assets/logos/response.png',
              mainHeading: 'Responsive UI System',
              discription:
                  'Fluid, adaptive layouts ensuring consistent experience across multiple screen sizes. ',
            ),

            SizedBox(width: 24),

            // --- Performance Service --- //
            HServicesContainerDesktop(
              iconUrl: 'assets/logos/performance.png',
              mainHeading: 'Performance-Focus Build',
              discription:
                  'Optimized app architecture with smooth rendering and efficient resource management.',
            ),
          ],
        ),
      ),
    );
  }
}
