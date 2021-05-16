import 'package:flutter/material.dart';
import 'package:trips_app/components/main_button.dart';
import 'package:trips_app/ui/place/review/review_list.dart';
import 'description/description.dart';

class Place extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin:
            EdgeInsets.only(top: 390.0, left: 30.0, right: 30.0, bottom: 30.0),
        child: ListView(
          children: [
            Description(
                title: 'San Andres - Island',
                rating: 3.4,
                description:
                    '''Is a coral island in the Caribbean Sea. Politically part of Colombia, and historically tied to the United Kingdom, San Andrés and the nearby islands of Providencia and Santa Catalina form the department of San Andrés, Providencia and Santa Catalina. San Andrés, in the southern group of islands, is the largest of the department. The official languages of the department are Spanish, English, and San Andrés–Providencia Creole.
                    '''),
            ReviewList()
          ],
        ));
  }
}
