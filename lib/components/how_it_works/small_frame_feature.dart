import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/constant_styles.dart';

class SmallFrameFeatures extends StatelessWidget {
  const SmallFrameFeatures({
    @required this.title,
    @required this.description,
    @required this.backgroundColor,
    @required this.textColor,
    @required this.iconColor,
    @required this.icon,
  });

  final String title;
  final String description;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  final IconData icon;

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    icon,
                    color: iconColor,
                    size: 35,
                  ),
                  SizedBox(height: 5),
                  AutoSizeText(
                    title,
                    textAlign: TextAlign.start,
                    minFontSize: 22,
                    maxFontSize: 32,
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      description,
                      textAlign: TextAlign.left,
                      minFontSize: 10,
                      maxFontSize: 26,
                      stepGranularity: 1,
                      style: GoogleFonts.poppins(
                        color: textColor,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
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
