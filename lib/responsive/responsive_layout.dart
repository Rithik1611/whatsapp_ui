import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/screens/desktop_screen_layout.dart';
import 'package:whatsapp_ui/screens/mobile_screen_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key, required this.mobileScreen, required this.desktopScreen});

  final Widget mobileScreen;
  final Widget desktopScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return const DesktopScreenLayout();
      }
      return const MobileScreenLayout();
    });
  }
}
