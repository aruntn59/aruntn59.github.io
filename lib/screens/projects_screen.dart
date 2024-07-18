import 'package:flutter/material.dart';
import '../widgets/project_card.dart';
import '../widgets/responsive_banner.dart';

class ProjectsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('My Projects'),
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveBanner(
              mobileBanner: 'assets/banners/mobileBanner/projectmob.jpg',
              desktopBanner: 'assets/banners/desktopBanners/project.jpg',
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





      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: ListView.builder(
      //     itemCount: projects.length,
      //     itemBuilder: (context, index) {
      //       final project = projects[index];
      //       return ProjectCard(
      //         title: project['title']!,
      //         description: project['description']!,
      //         imageUrl: project['imageUrl']!,
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
