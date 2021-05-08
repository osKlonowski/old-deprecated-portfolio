import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/constant_styles.dart';

class DescriptionElement extends StatelessWidget {
  const DescriptionElement({
    @required this.description,
    @required this.textAlign,
    @required this.backgroundColor,
    @required this.textColor,
  });

  final String description;
  final TextAlign textAlign;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            padding: gridItemMainPadding,
            alignment: Alignment.center,
            color: backgroundColor,
            child: SizedBox(
              width: constraints.maxWidth / 1.618,
              height: constraints.maxHeight / 1.618,
              child: Center(
                child: AutoSizeText(
                  description,
                  textAlign: textAlign,
                  minFontSize: 10,
                  maxFontSize: 26,
                  stepGranularity: 1,
                  style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
