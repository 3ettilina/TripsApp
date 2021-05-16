import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  String buttonText;

  MainButton({this.buttonText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context)
            // ScaffoldMessenger does not work with Cupertino BottomNav
            // ignore: deprecated_member_use
            .showSnackBar(SnackBar(content: Text("Hello, you!")));
      },
      child: Container(
        margin: EdgeInsets.only(top: 10.0, right: 20.0, bottom: 20.0),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
                begin: FractionalOffset(0.1, 0.25),
                end: FractionalOffset(0.9, 0.0),
                stops: [0.3, 1.0])),
        child: Center(
          child: Text(buttonText,
              style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800)),
        ),
      ),
    );
  }
}
