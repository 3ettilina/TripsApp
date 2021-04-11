import 'package:flutter/material.dart';
import 'home/place_description.dart';

void main() => runApp(TripsApp());

class TripsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PlaceDescriptionUI('San Andres - Island', 3.4, '''
          Is a coral island in the Caribbean Sea. Politically part of Colombia, and historically tied to the United Kingdom, San Andrés and the nearby islands of Providencia and Santa Catalina form the department of San Andrés, Providencia and Santa Catalina.[2][3] San Andrés, in the southern group of islands, is the largest of the department. The official languages of the department are Spanish, English, and San Andrés–Providencia Creole.
          '''),
      ),
    );
  }
}
