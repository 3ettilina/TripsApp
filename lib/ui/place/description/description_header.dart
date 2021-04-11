import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionHeader extends StatelessWidget {
  String title;
  double rating;

  DescriptionHeader(this.title, this.rating);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        titleW(title),
        Row(
          // Stars
          children: getStarsRating(rating),
        )
      ],
    );
  }
}

/// Returns a Container with a styled Text Widget which contains [text].
Widget titleW(String text) {
  return Container(
      margin: EdgeInsets.only(right: 20.0, bottom: 30.0),
      child: Text(
        text,
        style: GoogleFonts.londrinaSolid(
          textStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w900),
        ),
        textAlign: TextAlign.left,
      ));
}

/// Returns a Container with a styled Star Icon according to [type].
Widget starW(STAR_TYPE type) {
  IconData getStarIcon(STAR_TYPE type) {
    switch (type) {
      case STAR_TYPE.full:
        return Icons.star;
        break;
      case STAR_TYPE.half:
        return Icons.star_half;
        break;
      default:
        return Icons.star_border;
    }
  }

  return Container(
      margin: EdgeInsets.only(right: 2.0, bottom: 30.0),
      child: Icon(
        getStarIcon(type),
        color: Colors.amber,
      ));
}

/// Returns a List of Star Widgets according to [rating].
List<Widget> getStarsRating(double rating) {
  double aux = rating;
  List<Widget> stars = List.filled(5, starW(STAR_TYPE.empty), growable: false);

  // Retrieves the current Star Widget for the List
  Widget getStar() {
    Widget star = starW(STAR_TYPE.empty);
    if (aux > 0 && aux < 1) {
      star = starW(STAR_TYPE.half);
    }
    if (aux >= 1) {
      star = starW(STAR_TYPE.full);
    }
    aux--;
    return star;
  }

  // Map of the empty stars List to get full or half stars where belongs.
  return stars.map((emptyStar) => getStar()).toList();
}

// Types of possible Stars
enum STAR_TYPE { full, half, empty }
