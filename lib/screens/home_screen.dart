import 'package:flutter/material.dart';
// import '../widgets/custom_navigation_drawer.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/responsive_widget.dart';
import '../widgets/responsive_banner.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('My Portfolio'),
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
      ),
      drawer: CustomNavigationDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveBanner(
             mobileBanner: 'assets/banners/mobileBanner/mobhome.jpg',
              desktopBanner: 'assets/banners/desktopBanners/home.jpg',
            ),
            SizedBox(height: 20),
            ResponsiveWidget(
              mobile: MobileHomeScreen(),
              tablet: TabletHomeScreen(),
              desktop: DesktopHomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Mobile Home Screen'));
  }
}

class TabletHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Tablet Home Screen'));
  }
}

class DesktopHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Desktop Home Screen'));
  }
}
