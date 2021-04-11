import 'package:flutter/material.dart';
import 'package:trips_app/ui/place/description/description_body.dart';
import 'package:trips_app/ui/place/description/description_header.dart';

class Description extends StatelessWidget {
  String title;
  double rating;
  String description;

  Description(this.title, this.rating, this.description);

  @override
  Widget build(BuildContext context) {
    final placeContents = Column(
      children: [
        DescriptionHeader(title, rating),
        DescriptionBody(description)
      ],
    );

    final placeContainer = Container(
      margin: EdgeInsets.only(top: 120.0),
      child: placeContents,
    );

    return placeContainer;
  }
}
