import 'package:flutter/material.dart';
import '../../../../components/picture.dart';

class PicturesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Container(
      height: 380.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Picture("assets/img/san_andres_0.jpeg"),
          Picture("assets/img/san_andres_1.jpeg"),
          Picture("assets/img/san_andres_2.jpeg"),
          Picture("assets/img/san_andres_3.jpeg"),
          Picture("assets/img/san_andres_4.jpeg")
        ],
      ),
    );
    return list;
  }
}
