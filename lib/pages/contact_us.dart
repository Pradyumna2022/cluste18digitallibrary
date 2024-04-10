import 'package:digital_library/global/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Image.network(
                fit: BoxFit.cover,
                'https://images.pexels.com/photos/1617960/pexels-photo-1617960.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
          Positioned(
            top: 20,
            left: 5,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey[200],
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  // height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(100))),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '8009705922',
                            style: TextStyle(color: blackColor, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'abc@123',
                            style: TextStyle(color: blackColor, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.location_city,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '4 Boc road , jk up ',
                            style: TextStyle(color: blackColor, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
