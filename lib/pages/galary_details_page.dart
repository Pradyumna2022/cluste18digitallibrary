import 'package:digital_library/pages/full_photo_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalaryDetailsView extends StatefulWidget {
  const GalaryDetailsView({super.key});

  @override
  State<GalaryDetailsView> createState() => _GalaryDetailsViewState();
}

class _GalaryDetailsViewState extends State<GalaryDetailsView> {
  List<String> photos = [
    'lib/icons/p1.jpg',
    'lib/icons/p2.jpg',
    'lib/icons/p3.jpg',
    'lib/icons/p4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(CupertinoIcons.back),
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: GridView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: photos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FullPhotoView(photoPath: photos[index]),
                    ),
                  );
                },
                child: Container(
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
                ),
              );
            }),
      ),
    );
  }
}
