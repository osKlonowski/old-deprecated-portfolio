import 'package:flutter/foundation.dart';
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
      return 20;
    } else if (widthOfScreen < 1100 && widthOfScreen >= 650) {
      //TABLET
      return 16;
    } else if (widthOfScreen >= 1100) {
      //DESKTOP
      return 20;
    } else {
      return 18;
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

  void _redirectToDownload() {
    if (kIsWeb) {
      print('on the web');
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        html.window.open(
            'https://apps.apple.com/us/app/necter-offline-dating/id1546097364',
            'Necter - IOS');
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        html.window.open(
            'https://play.google.com/store/apps/details?id=io.tuned.bkt.necter',
            'Necter - Android');
      } else {
        print('Please view this page on a mobile device!');
        html.window.open(
            'https://apps.apple.com/us/app/necter-offline-dating/id1546097364',
            'Necter - IOS');
      }
    } else {
      print('Do nothing, show empty page');
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
                onTap: _redirectToDownload,
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
                    child: Text(
                      'Download',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize:
                            getFontSize(MediaQuery.of(context).size.width),
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
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
