import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/responsive/responsive_layout.dart';
import 'package:whatsapp_ui/screens/desktop_screen_layout.dart';
import 'package:whatsapp_ui/screens/mobile_screen_layout.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Whatsapp ui",
    theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
    home: const ResponsiveLayout(
        mobileScreen: MobileScreenLayout(),
        desktopScreen: DesktopScreenLayout()),
  ));
}
