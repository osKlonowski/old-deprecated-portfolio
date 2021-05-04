import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';
import 'package:necter_web/utils/global_func.dart';

class Welcome01 extends StatelessWidget {
  const Welcome01({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            color: Color.fromRGBO(251, 251, 251, 1.0),
            padding: gridItemMainPadding,
            child: Center(
              child: SizedBox(
                width: constraints.maxWidth / 1.618,
                height: constraints.maxHeight / 1.618,
                child: Image.asset(
                  'assets/animations/wing_app.gif',
                  fit: BoxFit.fitWidth,
                ),
              ),
              // child: SizedBox(
              //   width: isMobile(context)
              //       ? constraints.maxWidth * 0.7
              //       : constraints.maxWidth * 0.42,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       AutoSizeText(
              //         'Necter\nis your Pocket-Wingwoman.',
              //         // stepGranularity: 2,
              //         presetFontSizes: <double>[
              //           45,
              //           40,
              //           38,
              //           34,
              //           30,
              //           28,
              //           26,
              //           24,
              //           22,
              //           20,
              //           18,
              //           16
              //         ],
              //         minFontSize: 16,
              //         maxFontSize: 45,
              //         style: GoogleFonts.poppins(
              //           fontSize: 40,
              //           fontWeight: FontWeight.w700,
              //           color: Colors.black,
              //         ),
              //       ),
              //       SizedBox(height: 12),
              //       // GestureDetector(
              //       //   onTap: () {
              //       //     print('Pressed...');
              //       //   },
              //       //   child: Container(
              //       //     decoration:
              //       //         BoxDecoration(color: red, boxShadow: <BoxShadow>[
              //       //       BoxShadow(
              //       //         offset: Offset(1, 1),
              //       //         color: Colors.black.withOpacity(0.1),
              //       //         blurRadius: 10,
              //       //         spreadRadius: 1,
              //       //       ),
              //       //     ]),
              //       //     padding: const EdgeInsets.all(8.0),
              //       //     child: IntrinsicHeight(
              //       //       child: Row(
              //       //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       //         children: <Widget>[
              //       //           Text(
              //       //             'Get Early Access',
              //       //             style: GoogleFonts.poppins(
              //       //               fontSize: 18.0,
              //       //               fontWeight: FontWeight.w500,
              //       //               color: Colors.white,
              //       //             ),
              //       //           ),
              //       //           Flexible(
              //       //             child: VerticalDivider(
              //       //               width: 1,
              //       //               thickness: 1.0,
              //       //               indent: 4,
              //       //               endIndent: 4,
              //       //               color: Colors.white60,
              //       //             ),
              //       //           ),
              //       //           Icon(
              //       //             FontAwesomeIcons.arrowRight,
              //       //             color: Colors.white,
              //       //             size: 18.0,
              //       //           ),
              //       //         ],
              //       //       ),
              //       //     ),
              //       //   ),
              //       // ),
              //       Padding(
              //         padding: const EdgeInsets.only(top: 8.0),
              //         child: AutoSizeText(
              //           'Be part of the first 10,000 and get 3 months of Necter GO for free!',
              //           minFontSize: 8,
              //           maxFontSize: 14,
              //           stepGranularity: 1,
              //           style: GoogleFonts.poppins(
              //             fontSize: 13.0,
              //             fontWeight: FontWeight.w600,
              //             color: Colors.grey[600],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ),
          );
        },
      ),
    );
  }
}
