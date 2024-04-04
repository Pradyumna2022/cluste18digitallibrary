import 'package:flutter/material.dart';

class FullPhotoView extends StatelessWidget {
  final String photoPath;

  FullPhotoView({required this.photoPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: photoPath,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                photoPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
