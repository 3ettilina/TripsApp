import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trips_app/ui/common/stars_rating.dart';

class DescriptionHeader extends StatelessWidget {
  String title;
  double rating;

  DescriptionHeader(this.title, this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          titleW(title),
          StarsRating(rating, 20.0),
        ],
      ),
    );
  }
}

/// Returns a Container with a styled Text Widget which contains [text].
Widget titleW(String text) {
  return Container(
    margin: EdgeInsets.only(right: 19.0),
    child: Text(
      text,
      style: GoogleFonts.londrinaSolid(
        textStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w900),
      ),
      textAlign: TextAlign.left,
    ),
  );
}
