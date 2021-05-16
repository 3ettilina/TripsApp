import 'package:flutter/material.dart';

/// Returns a set of 5 stars that matches [rating].
class StarsRating extends StatelessWidget {
  double rating;
  double iconSize;

  StarsRating(this.rating, this.iconSize);

  @override
  Widget build(BuildContext context) {
    return getStarsRating(rating, iconSize);
  }
}

/// Returns a List of Star Widgets according to [rating].
Row getStarsRating(double rating, double iconSize) {
  double aux = rating;
  List<Widget> stars =
      List.filled(5, starW(STAR_TYPE.empty, iconSize), growable: false);

  // Retrieves the current Star Widget for the List
  Widget getStar() {
    Widget star = starW(STAR_TYPE.empty, iconSize);
    if (aux > 0 && aux < 1) {
      star = starW(STAR_TYPE.half, iconSize);
    }
    if (aux >= 1) {
      star = starW(STAR_TYPE.full, iconSize);
    }
    aux--;
    return star;
  }

  // Map of the empty stars List to get full or half stars where belongs.
  return Row(children: stars.map((emptyStar) => getStar()).toList());
}

/// Returns a Container with a styled Star Icon according to [type].
Widget starW(STAR_TYPE type, double size) {
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
      margin: EdgeInsets.only(right: 2.0),
      child: Icon(
        getStarIcon(type),
        color: Colors.amber,
        size: size,
      ));
}

// Types of possible Stars
enum STAR_TYPE { full, half, empty }
