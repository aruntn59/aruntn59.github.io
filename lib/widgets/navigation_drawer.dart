import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black38,
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/imagedp.jpg'), // Add a profile picture in your assets folder
                ),
                // Flexible(
                //   child: Text(
                //     'Arun Narayanan',
                //     style: GoogleFonts.dosis(
                //       color: Colors.grey,
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse('https://www.linkedin.com/in/arun-tn-809297301/'));
                      },
                      icon: const Icon(FontAwesomeIcons.linkedin),
                      color: Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse('https://github.com/aruntn59'));
                      },
                      icon: const Icon(EvaIcons.github),
                      color: Colors.grey,
                      splashColor: Colors.blueAccent,
                      highlightColor: Colors.blue,
                    ),
                    IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse('https://www.facebook.com/people/Arun-Sulochana-Narayanan/pfbid034Nf9wD7GEmuCg2Lvt64L2ZEE8UvK7GWcJwWzyf4DRyH9BH1dx8RrkYV9g5UJ8Ptzl/?name=xhp_nt_'));
                      },
                      icon: const Icon(FontAwesome.facebook_brand),
                      color: Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse('https://drive.google.com/file/d/1yc7jvsmj0TDmMwcqxCvZ97gxS7se-HAs/view?usp=drive_link'));
                      },
                      icon: const Icon(FontAwesome.file_pdf),
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            title: const Text('Projects'),
            onTap: () {
              Navigator.pushNamed(context, '/projects');
            },
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () {
              Navigator.pushNamed(context, '/contact');
            },
          ),
        ],
      ),
    );
  }
}
