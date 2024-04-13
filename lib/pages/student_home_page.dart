import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_library/auth/choose_one_auth.dart';
import 'package:digital_library/auth/otp_verify_page.dart';
import 'package:digital_library/auth/phon_number_login.dart';
import 'package:digital_library/global/color.dart';
import 'package:digital_library/pages/details_page_of_web_view.dart';
import 'package:digital_library/pages/full_photo_view.dart';
import 'package:digital_library/pages/galary_details_page.dart';
import 'package:digital_library/pages/profile_page.dart';
import 'package:digital_library/widgets/drawer.dart';
import 'package:digital_library/widgets/marking_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StudentHomePage extends StatelessWidget {
  StudentHomePage({super.key});
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
  List<String> imagePath = [
    'lib/icons/moti1.jpg',
    'lib/icons/moti2.jpg',
    'lib/icons/moti3.jpg',
    'lib/icons/moti4.jpg',
  ];
  List<String> starValue = ['23', '15', '37', '84'];
  List<String> quoteText = [
    'You must be the change you wish to see in the world.',
    'Spread love everywhere you go.',
    'The only thing we have to fear is fear itself.',
    'Do one thing every day that scares you'
  ];
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
  List<String> webViewList = [
    'https://www.google.com',
    'https://www.facebook.com',
    'https://github.com',
    'https://www.w3schools.com/js/'
  ];
  final buttonCarouselController = CarouselController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    print('mobil--------------');
    return SafeArea(
      child: Scaffold(
        key: _key,
        endDrawer: DrawerWidget(),
        body: SingleChildScrollView(
          child: Container(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 217, 232, 232)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfilePage()));
                            },
                            child: CircleAvatar(
                              backgroundColor: whiteColor,
                              radius: 20,
                              child:
                                  Icon(Icons.person, color: Colors.deepPurple),
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: whiteColor,
                                radius: 20,
                                child: Icon(
                                  Icons.search,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PhoneNubmerLogin()));
                                },
                                child: CircleAvatar(
                                  backgroundColor: whiteColor,
                                  radius: 20,
                                  child: Icon(
                                    Icons.login,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _key.currentState!.openEndDrawer();
                                },
                                child: CircleAvatar(
                                  backgroundColor: whiteColor,
                                  radius: 20,
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Welcome $mobileNumber",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                      Text(
                        "T H E   G U A R D I A N",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10.0),
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: imagePath.length,
                      itemBuilder: (ctx, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 165,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 196, 171, 240),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(imagePath[index]),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 15.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        // mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            'lib/icons/star.png',
                                            width: 17,
                                          ),
                                          Text(
                                            starValue[index],
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: whiteColor),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        quoteText[index],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        softWrap: true,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        WebViewDetailsPage(
                                                          url: webViewList[
                                                              index],
                                                        )));
                                          },
                                          child: Text(
                                            "View More..",
                                            style: TextStyle(color: whiteColor),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.deepPurple,
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
