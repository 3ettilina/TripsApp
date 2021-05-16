import 'package:flutter/material.dart';
import 'package:trips_app/components/fav_button.dart';

class Picture extends StatelessWidget {
  String url;

  Picture(this.url);

  @override
  Widget build(BuildContext context) {
    final pic = Container(
      width: 250.0,
      margin: EdgeInsets.only(top: 110.0, left: 20.0),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(url), fit: BoxFit.cover // so it doesn't crop
              ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0) // position of the shadow
                )
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.15),
      children: [pic, FavButton()],
    );
  }
}
