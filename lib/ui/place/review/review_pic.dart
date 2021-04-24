import 'package:flutter/material.dart';

class ReviewPic extends StatelessWidget {
  String picturePath;

  ReviewPic(this.picturePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 78, 163, 202),
        backgroundImage: NetworkImage(
          picturePath,
        ),
        radius: 25.0,
      ),
    );
  }
}
