import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionBody extends StatelessWidget {
  String text;

  DescriptionBody(this.text);

  @override
  Widget build(BuildContext context) {
    /// Returns a styled Text Widget for description with [text].
    return Text(text,
        textAlign: TextAlign.start,
        style: GoogleFonts.cairo(
            textStyle: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic)));
  }
}
