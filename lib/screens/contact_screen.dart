import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    final screenSize = MediaQuery.of(context).size;
    double propicHegiht=screenSize.height* 0.3;
    double propicWidth=screenSize.width* 0.40 ;


    return Scaffold(
      appBar: AppBar(
        // title: Text('Contact Me'),
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveBanner(
              mobileBanner: 'assets/banners/mobileBanner/contactmobscreen.jpg',
              desktopBanner: 'assets/banners/desktopBanners/contact_me_web.jpg',
            ),


            // Stack(
            //   children: [
            //   Positioned(
            //   right: screenSize.width * 0.03,
            //   bottom: screenSize.height * 0.2,
            //   child: GestureDetector(
            //     onTap: () {
            //       // Navigator.pushReplacement(
            //       //   context,
            //       //   MaterialPageRoute(builder: (context) => Home()),
            //       // );
            //     },
            //     child: Container(
            //       height: propicHegiht,
            //       width: propicWidth,
            //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //       constraints: BoxConstraints(minWidth:150 ),
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(50),
            //         color: Colors.grey,
            //         // image: DecorationImage(
            //         //     image: AssetImage('assets/img/propic.jpg'),
            //         //      fit: BoxFit.contain),
            //         boxShadow: [
            //           BoxShadow(
            //             offset: Offset(5, 2),
            //             color: Colors.black.withOpacity(0.70),
            //             blurRadius: 5,
            //           ),
            //         ],
            //       ),
            //       child: Center(
            //         child: Column(
            //           children: [
            //             Expanded(
            //               child: Text(
            //                 'Arun Narayanan',
            //                 style: GoogleFonts.dosis(
            //                     color: Colors.grey,
            //                     fontSize: 20,
            //                     fontWeight: FontWeight.bold),
            //               ),
            //             ),
            //
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),],)


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
