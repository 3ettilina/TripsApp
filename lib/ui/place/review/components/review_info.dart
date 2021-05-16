import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trips_app/components/stars_rating.dart';

class ReviewInfo extends StatelessWidget {
  String userName;
  int reviews;
  int photos;
  double currentReview;
  String comment;

  ReviewInfo(this.userName, this.reviews, this.photos, this.currentReview,
      this.comment);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        nameW(userName),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            detailsW(reviews, photos),
            StarsRating(currentReview, 12.5)
          ],
        ),
        commentW(comment)
      ],
    ));
  }
}

Widget nameW(String userName) {
  return Text(userName,
      style: GoogleFonts.cairo(
          textStyle: TextStyle(
        fontSize: 18,
      )));
}

Widget detailsW(int reviewsAmount, int photosAmount) {
  return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Text(getDetailsText(reviewsAmount, photosAmount),
          style: GoogleFonts.cairo(
              textStyle:
                  TextStyle(fontSize: 12, fontWeight: FontWeight.w300))));
}

Widget commentW(String comment) {
  return Container(
    child: Text(comment,
        softWrap: true,
        style: GoogleFonts.cairo(
            textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w900))),
  );
}

String getDetailsText(int reviewsAmount, int photosAmount) {
  String reviews = "";
  if (reviewsAmount > 1 || reviewsAmount == 0) {
    reviews = "$reviewsAmount reviews";
  } else {
    reviews = "$reviewsAmount review";
  }

  String photos = "";
  if (photosAmount > 1 || photosAmount == 0) {
    photos = "$photosAmount photos";
  } else {
    photos = "$photosAmount photo";
  }

  return "$reviews - $photos";
}
