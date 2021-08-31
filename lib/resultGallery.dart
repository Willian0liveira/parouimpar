import 'package:flutter/material.dart';

class ResultGallery extends StatefulWidget {
  const ResultGallery({Key? key}) : super(key: key);

  @override
  _ResultGalleryState createState() => _ResultGalleryState();
}

class _ResultGalleryState extends State<ResultGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView(),


          ],
        ),
      ),
    );
  }
}
