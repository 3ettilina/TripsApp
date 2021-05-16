import 'package:flutter/material.dart';
import 'header_gradient.dart';
import '../ui/place/header/pictures/pictures_list.dart';

class HeaderAppBar extends StatelessWidget {
  final String title;

  HeaderAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[HeaderGradient(title), PicturesList()],
    );
  }
}
