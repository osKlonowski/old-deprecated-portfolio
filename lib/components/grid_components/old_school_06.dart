import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';

class OldSchool06 extends StatelessWidget {
  const OldSchool06({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            padding: gridItemMainPadding,
            color: green,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: AutoSizeText(
                      'OLD SCHOOL DATING\n',
                      maxFontSize: 45,
                      minFontSize: 28,
                      presetFontSizes: [45, 40, 38, 34, 30, 28],
                      textAlign: TextAlign.right,
                      style: GoogleFonts.pressStart2p(
                        fontSize: 33.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),
                  Flexible(
                    child: AutoSizeText(
                      'NEW SCHOOL TECH',
                      maxFontSize: 45,
                      minFontSize: 28,
                      presetFontSizes: [45, 40, 38, 34, 30, 28],
                      textAlign: TextAlign.right,
                      style: GoogleFonts.poppins(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
