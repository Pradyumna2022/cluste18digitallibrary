import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_library/global/color.dart';
import 'package:digital_library/pages/galary_details_page.dart';
import 'package:digital_library/widgets/batch_tabs.dart';
import 'package:digital_library/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLightTheme = true;
  List<String> photos = [
    'lib/icons/p1.jpg',
    'lib/icons/p2.jpg',
    'lib/icons/p3.jpg',
    'lib/icons/p4.jpg',
  ];
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
      body: RefreshIndicator(
        onRefresh: refreshPage,
        child: ListView(
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
            SizedBox(
              height: 170,
              child: CarouselSlider(
                items: items,
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  // aspectRatio: 2,
                  autoPlayCurve: Curves.bounceIn,
                  viewportFraction: 0.8,
                  enlargeFactor: 5,
                  height: 150,
                  padEnds: true,
                  enlargeCenterPage: false,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  enableInfiniteScroll: true,

                  // animateToClosest: true,
                  onPageChanged: (index, reason) {
                    print(index.toString() +
                        '----------------index' +
                        reason.toString() +
                        '-----------------reason');
                  },
                ),
              ),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "Galary",
            //       style: GoogleFonts.josefinSans(
            //         textStyle: TextStyle(
            //             color: Colors.black,
            //             letterSpacing: .5,
            //             fontSize: 25,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => GalaryDetailsView()));
            //         print('----------- GalaryDetailsView');
            //       },
            //       child: Text(
            //         "View More",
            //         style: GoogleFonts.josefinSans(
            //           textStyle: TextStyle(
            //               color: Colors.black45,
            //               letterSpacing: .5,
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),,

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 10),
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, crossAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return Container(
                            // padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  photos[index],
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                  ),
                  // Text('fdshfsh')
                  // Text(
                  //   "Batches",
                  //   style: GoogleFonts.playfairDisplay(
                  //     textStyle: TextStyle(
                  //         color: Colors.black,
                  //         letterSpacing: .5,
                  //         fontSize: 25,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  SizedBox(height: 300, child: BatchTabsWidget())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
