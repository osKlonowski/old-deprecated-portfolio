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
              child: RichText(
                textAlign: TextAlign.right,
                text: TextSpan(
                  text: 'OLD SCHOOL DATING\n',
                  style: GoogleFonts.pressStart2p(
                    fontSize: 33.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 0.8,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'NEW SCHOOL TECH',
                      style: GoogleFonts.poppins(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
