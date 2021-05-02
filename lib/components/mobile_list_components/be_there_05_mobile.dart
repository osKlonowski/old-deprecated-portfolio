import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';

class BeThere05Mobile extends StatelessWidget {
  const BeThere05Mobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            padding: gridItemMainPadding,
            color: orange,
            child: Center(
              child: AutoSizeText(
                'BE SPONTANEOUS\nBE THERE\nBE YOU',
                textAlign: TextAlign.left,
                stepGranularity: 2,
                minFontSize: 20.0,
                maxFontSize: 45.0,
                style: GoogleFonts.poppins(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
