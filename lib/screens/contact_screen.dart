import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/responsive_banner.dart';
import '../widgets/responsive_widget.dart';
import 'home_screen.dart';

class ContactScreen extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Contact Me'),
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveBanner(
              mobileBanner: 'assets/banners/mobileBanner/contactmemob.jpg',
              desktopBanner: 'assets/banners/desktopBanners/contact_me.jpg',
            ),
            // SizedBox(height: 20),
            // ResponsiveWidget(
            //   mobile: MobileHomeScreen(),
            //   tablet: TabletHomeScreen(),
            //   desktop: DesktopHomeScreen(),
            // ),
          ],
        ),
      ),
    );
  }
}
