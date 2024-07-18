import 'package:flutter/material.dart';
import 'responsive_widget.dart';

class ResponsiveBanner extends StatelessWidget {
  final String mobileBanner;
  final String desktopBanner;

  ResponsiveBanner({
    required this.mobileBanner,
    required this.desktopBanner,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Image.asset(mobileBanner),
      tablet: Image.asset(desktopBanner),
      desktop: Image.asset(desktopBanner),
    );
  }
}
