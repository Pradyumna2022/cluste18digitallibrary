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
          color: Colors.grey.shade200,
        ),
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
              child: Text(
                "L O G O",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            )),
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
                      letterSpacing: .5,
                      fontSize: 25,
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
                      fontSize: 25,
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
                      fontSize: 25,
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
                      fontSize: 25,
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
