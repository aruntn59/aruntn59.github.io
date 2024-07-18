import 'package:flutter/material.dart';

import '../widgets/responsive_banner.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('About Me'),
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveBanner(
              mobileBanner: 'assets/banners/mobileBanner/educationmob.jpg',
              desktopBanner: 'assets/banners/desktopBanners/education.jpg',
            ),
            ResponsiveBanner(
              mobileBanner: 'assets/banners/mobileBanner/skillsmob.jpg',
              desktopBanner: 'assets/banners/desktopBanners/skils.jpg',
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
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Text(
      //           'About Me',
      //           style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      //         ),
      //         SizedBox(height: 16),
      //         Text(
      //           'I am a passionate developer with experience in mobile and web development...',
      //           style: TextStyle(fontSize: 18),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
