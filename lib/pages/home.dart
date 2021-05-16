import 'package:flutter/material.dart';
import 'package:trips_app/ui/place/header/header.dart';
import 'package:trips_app/ui/place/place.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [Place(), Header()],
    ));
  }
}
