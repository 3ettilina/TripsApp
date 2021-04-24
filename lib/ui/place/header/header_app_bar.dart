import 'package:flutter/material.dart';
import 'header_gradient.dart';
import 'pictures/pictures_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[HeaderGradient("Popular"), PicturesList()],
    );
  }
}
