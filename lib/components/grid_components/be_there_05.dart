import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/constant_styles.dart';

class BeThere05 extends StatelessWidget {
  const BeThere05({Key key}) : super(key: key);

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
                'BE SPONTANEOUS\nBE THERE\nBE YOU',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 50.0,
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
