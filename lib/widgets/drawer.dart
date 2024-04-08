import 'package:digital_library/global/color.dart';
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
          color: Color.fromARGB(255, 226, 255, 245),
        ),
        child: ListView(
          children: [
            Container(
              color: blackColor,
              child: DrawerHeader(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child:
                      Center(child: Image.asset('lib/icons/digital li.jpg'))),
            ),
            ListTile(
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
            ListTile(
              leading: Image.asset(
                'lib/icons/picture.png',
                width: 25,
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
              leading: Icon(Icons.contact_emergency_outlined),
              title: Text(
                "Contact",
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
              leading: Icon(Icons.room_service),
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
            )
          ],
        ),
      ),
    );
  }
}
