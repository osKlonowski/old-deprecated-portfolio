import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';
import 'package:necter_web/utils/global_func.dart';
import 'dart:html' as html;

class OpenBeta02 extends StatelessWidget {
  const OpenBeta02({Key key}) : super(key: key);

  double getFontSize(double widthOfScreen) {
    if (widthOfScreen < 650) {
      //MOBILE
      return 18;
    } else if (widthOfScreen < 1100 && widthOfScreen >= 650) {
      //TABLET
      return 14;
    } else if (widthOfScreen >= 1100) {
      //DESKTOP
      return 18;
    } else {
      return 16;
    }
  }

  bool shouldShowLogo(double widthOfScreen) {
    if (widthOfScreen < 650) {
      //MOBILE
      return true;
    } else if (widthOfScreen < 1100 && widthOfScreen >= 650) {
      //TABLET
      return false;
    } else if (widthOfScreen >= 1100) {
      //DESKTOP
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            color: Colors.black,
            padding: gridItemMainPadding,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  html.window.open(
                      'https://testflight.apple.com/join/K3MKZ7rC', 'new tab');
                },
                child: SizedBox(
                  width: isMobile(context)
                      ? constraints.maxWidth / 1.45
                      : constraints.maxWidth / 2.5,
                  // height: constraints.maxHeight / 1.618,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: caribbeanGreenLight,
                          offset: Offset(4, 4),
                          spreadRadius: 0,
                          blurRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //LOGO APPLE
                        shouldShowLogo(MediaQuery.of(context).size.width)
                            ? Flexible(
                                child: Image.asset(
                                  'assets/apple_logo.png',
                                  fit: BoxFit.contain,
                                  width: isMobile(context) ? 25 : 40,
                                  height: isMobile(context) ? 25 : 40,
                                ),
                              )
                            : SizedBox.shrink(),
                        shouldShowLogo(MediaQuery.of(context).size.width)
                            ? SizedBox(width: 12)
                            : SizedBox.shrink(),
                        Text(
                          'Download BETA',
                          style: GoogleFonts.poppins(
                            fontSize:
                                getFontSize(MediaQuery.of(context).size.width),
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
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
