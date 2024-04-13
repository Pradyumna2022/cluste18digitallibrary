import 'package:digital_library/auth/phon_number_login.dart';
import 'package:digital_library/global/color.dart';
import 'package:digital_library/auth/application_form.dart';
import 'package:digital_library/pages/contact_us.dart';
import 'package:digital_library/pages/galery_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 203, 180, 242),
        ),
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
                    child: Text(
              'The Guardian',
              style: GoogleFonts.josefinSans(
                textStyle: TextStyle(
                    color: Colors.black,
                    // letterSpacing: .5,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ))),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: blackColor,
                ),
                title: Text(
                  "Home",
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                        color: Colors.black,
                        // letterSpacing: .5,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              // leading: Image.asset(
              //   'lib/icons/picture.png',
              //   width: 25,
              // ),
              leading: Icon(
                CupertinoIcons.folder,
                color: blackColor,
              ),
              title: Text(
                "Gallery",
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: .5,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GaleryPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text(
                "Login",
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: .5,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhoneNubmerLogin()));
              },
            ),
            ListTile(
              leading: Icon(Icons.design_services_outlined),
              title: Text(
                "Services",
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: .5,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency_outlined),
              title: Text(
                "Contact Us",
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: .5,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactUsPage()));
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Logout",
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: .5,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
