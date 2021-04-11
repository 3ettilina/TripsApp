import 'package:flutter/material.dart';
import 'package:trips_app/ui/place/review/review_info.dart';
import 'package:trips_app/ui/place/review/review_pic.dart';

class Review extends StatelessWidget {
  String picturePath;
  String userName;
  int amountOfReviews;
  int amountOfPhotos;
  double currentReview;
  String comment;

  Review(this.picturePath, this.userName, this.amountOfReviews,
      this.amountOfPhotos, this.currentReview, this.comment);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          ReviewPic(picturePath),
          ReviewInfo(
              userName, amountOfReviews, amountOfPhotos, currentReview, comment)
        ],
      ),
    );
  }
}
