import 'package:flutter/material.dart';
import 'package:trips_app/components/main_button.dart';
import 'package:trips_app/ui/place/description/description_body.dart';
import 'package:trips_app/ui/place/description/description_header.dart';

class Description extends StatelessWidget {
  String title;
  double rating;
  String description;

  Description({this.title, this.rating, this.description});

  @override
  Widget build(BuildContext context) {
    final placeContents = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DescriptionHeader(title, rating),
        DescriptionBody(description),
        MainButton(buttonText: "Click me!")
      ],
    );

    return placeContents;
  }
}
