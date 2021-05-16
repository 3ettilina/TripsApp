import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderGradient extends StatelessWidget {
  String title = "Popular";

  HeaderGradient(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
            begin: FractionalOffset(0.1, 0.25),
            end: FractionalOffset(0.9, 0.0),
            stops: [0.3, 1.0]),
      ),
      child: Text(title,
          style: GoogleFonts.cairo(
              color: Colors.white,
              fontSize: 35.0,
              fontWeight: FontWeight.w800)),
      alignment: Alignment(-0.8, -0.6),
    );
  }
}
