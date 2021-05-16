import 'package:flutter/material.dart';

class FavButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavButton();
  }
}

class _FavButton extends State<FavButton> {
  bool _pressed = false;

  void onFavPressed() {
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onFavPressed,
      backgroundColor: Colors.greenAccent,
      mini: true,
      child: Icon(this._pressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}
