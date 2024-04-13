import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_library/auth/phon_number_login.dart';
import 'package:digital_library/global/color.dart';
import 'package:digital_library/pages/details_page_of_web_view.dart';
import 'package:digital_library/pages/full_photo_view.dart';
import 'package:digital_library/pages/galary_details_page.dart';
import 'package:digital_library/pages/galery_page.dart';
import 'package:digital_library/auth/choose_one_auth.dart';
import 'package:digital_library/widgets/batch_tabs.dart';
import 'package:digital_library/widgets/drawer.dart';
import 'package:digital_library/widgets/marking_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final webViewController = WebViewController();
  bool isLightTheme = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    webViewController.loadRequest(Uri.parse(
        'https://www.hindishayariana.com/2019/12/motivational-images-hindi.html'));
  }

  List<String> photos = [
    // 'lib/icons/p1.jpg',
    'lib/icons/p2.jpg',
    'lib/icons/p3.jpg',
    'lib/icons/p3.jpg',
  ];
  List<String> text = [
    'A library is a collection of books, and possibly other materials and media',
    'A library is a collection of books, and possibly other materials and media',
    'A library is a collection of books, and possibly other materials and media'
  ];
  List<String> star = ['****', '*****', '**', '***'];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget>? items = [
    ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'lib/icons/bn1.png',
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'lib/icons/bn2.png',
        fit: BoxFit.cover,
      ),
    ),
  ];

  Future<void> refreshPage() async {}
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 162, 146),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(23),
                bottomRight: Radius.circular(23))),
        title: Text(
          'THE GUARDIAN',
          style: GoogleFonts.oswald(
            textStyle: TextStyle(
                color: whiteColor,
                letterSpacing: 5,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => ChooseOne()));
              },
              icon: Icon(
                Icons.login,
                color: whiteColor,
              ))
        ],
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Builder(builder: (context) {
            return Image.asset('lib/icons/app.png',
                scale: 25, color: whiteColor);
          }),
        ),
        centerTitle: true,
      ),
      drawer: DrawerWidget(),
      body: ListView(
        physics: ScrollPhysics(),
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //       color: Color.fromARGB(255, 4, 162, 146),
          // borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(23),
          //     bottomRight: Radius.circular(23))),
          //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          //   child: Row(
          //     children: [
          //       GestureDetector(
          //         onTap: () {
          //           _scaffoldKey.currentState!.openDrawer();
          //         },
          //         child: Builder(builder: (context) {
          //           return Padding(
          //             padding: const EdgeInsets.only(
          //                 top: 10, left: 20, bottom: 5.0),
          //             child: Image.asset(
          //               // alignment: Alignment.topLeft,
          //               'lib/icons/app.png',
          //               scale: 25,
          //               color: whiteColor,
          //             ),
          //           );
          //         }),
          //       ),
          //       SizedBox(
          //         width: 25,
          //       ),
          //       Text(
          //         'THE GUARDIAN',
          //         style: GoogleFonts.oswald(
          //           textStyle: TextStyle(
          //               color: whiteColor,
          //               letterSpacing: 5,
          //               fontSize: 22,
          //               fontWeight: FontWeight.bold),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          // // Container(
          // //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(12),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.5),
          //           spreadRadius: 1,
          //           blurRadius: 1,
          //           offset: Offset(0, 3),
          //         ),
          //       ],
          //     ),
          //     child: TextFormField(
          //       decoration: InputDecoration(
          //           hintText: 'Search Here...',
          //           contentPadding: EdgeInsets.only(left: 15),
          //           enabledBorder: InputBorder.none,
          //           focusedBorder: InputBorder.none),
          //     )),

          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: CarouselSlider(
              items: items,
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                // aspectRatio: 2,
                autoPlayCurve: Curves.bounceIn,
                viewportFraction: 0.76,
                enlargeFactor: 4.5,
                // enlargeFactor: 5,
                // viewportFraction: 0.8,
                height: 150,
                padEnds: true,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                enableInfiniteScroll: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Galery",
                  style: TextStyle(
                      color: Color.fromARGB(255, 60, 40, 95),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GalaryDetailsView()));
                  },
                  child: Text(
                    "View More",
                    style: TextStyle(
                        color: Color.fromARGB(255, 95, 31, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
            child: GridView.builder(
                shrinkWrap: true,
                // padding: EdgeInsets.only(top: 15),
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  // childAspectRatio: 1 / 0.5),
                ),
                itemBuilder: (context, index) {
                  return MarketingIiles(
                    iconPath: photos[index].toString(),
                    // powerOn: smartDevices[index][2],
                    // smartDevicesName: smartDevices[index][0].toString(),
                    // onChanged: (value) {
                    //   powerSwichedChanged(value, index);
                    // },
                  );
                }),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SizedBox(height: 320, child: BatchTabsWidget()))
        ],
      ),
    );
  }
}
