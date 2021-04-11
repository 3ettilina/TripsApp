import 'package:flutter/material.dart';

class PlaceDescriptionUI extends StatelessWidget {
  String title;
  double rating;
  String description;

  PlaceDescriptionUI(this.title, this.rating, this.description);

  @override
  Widget build(BuildContext context) {
    final headerRow = Row(
      children: <Widget>[
        PlaceDescriptionWidgets().titleW(title),
        Row(
          // Stars
          children: getStarsRating(rating),
        )
      ],
    );

    final placeContents = Column(
      children: [
        headerRow,
        PlaceDescriptionWidgets().descriptionW(description)
      ],
    );

    final placeContainer = Container(
      margin: EdgeInsets.only(top: 320.0, left: 30.0, right: 30.0),
      child: placeContents,
    );

    return placeContainer;
  }
}

/// Returns a List of Star Widgets according to [rating].
List<Widget> getStarsRating(double rating) {
  double aux = rating;
  List<Widget> stars = List.filled(
      5, PlaceDescriptionWidgets().starW(STAR_TYPE.empty),
      growable: false);

  // Retrieves the current Star Widget for the List
  Widget getStar() {
    Widget star = PlaceDescriptionWidgets().starW(STAR_TYPE.empty);
    if (aux > 0 && aux < 1) {
      star = PlaceDescriptionWidgets().starW(STAR_TYPE.half);
    }
    if (aux >= 1) {
      star = PlaceDescriptionWidgets().starW(STAR_TYPE.full);
    }
    aux--;
    return star;
  }

  // Map of the empty stars List to get full or half stars where belongs.
  return stars.map((emptyStar) => getStar()).toList();
}

/// A set of individual Widgets of the UI separated in methods.
class PlaceDescriptionWidgets {
  /// Returns a Container with a styled Text Widget which contains [text].
  Widget titleW(String text) {
    return Container(
        margin: EdgeInsets.only(right: 20.0, bottom: 30.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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

  /// Returns a styled Text Widget for description with [text].
  Widget descriptionW(String text) {
    return Text(text,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic));
  }
}

// Types of possible Stars
enum STAR_TYPE { full, half, empty }
