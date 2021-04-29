import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/constant_styles.dart';

class SayHi04 extends StatelessWidget {
  const SayHi04({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            padding: gridItemMainPadding,
            color: Colors.white,
            child: Center(
              child: Text(
                'The easiest\nway to say "Hi"\nother than walking over.',
                textAlign: TextAlign.right,
                style: GoogleFonts.poppins(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
