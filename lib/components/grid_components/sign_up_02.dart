import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';

class SignUp02 extends StatelessWidget {
  const SignUp02({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            padding: gridItemMainPadding,
            color: red,
            child: Center(
              child: SizedBox(
                width: constraints.maxWidth * 0.5,
                height: constraints.maxHeight * 0.5,
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      AutoSizeText(
                        'Early Sign Up',
                        maxFontSize: 24.0,
                        minFontSize: 16.0,
                        presetFontSizes: <double>[24, 22, 20, 18, 16],
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.35,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14.0,
                            vertical: 4.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                offset: Offset(1, 1),
                                color: Colors.black26.withOpacity(0.1),
                                blurRadius: 8,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  FontAwesomeIcons.solidUser,
                                  color: blue,
                                  size: 16.0,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Name',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.35,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14.0,
                            vertical: 4.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                offset: Offset(1, 1),
                                color: Colors.black26.withOpacity(0.1),
                                blurRadius: 8,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  FontAwesomeIcons.solidEnvelope,
                                  color: blue,
                                  size: 16.0,
                                ),
                              ),
                              Expanded(
                                  child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email Address',
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                      AutoSizeText(
                        'By clicking submit you agree to our Terms and Conditions and our Privacy Policy.',
                        textAlign: TextAlign.center,
                        minFontSize: 10.0,
                        maxFontSize: 14.0,
                        stepGranularity: 1,
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18.0,
                          vertical: 6.0,
                        ),
                        decoration: BoxDecoration(
                          gradient: redBlueGradient,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Text(
                          'Get Access',
                          style: GoogleFonts.poppins(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      AutoSizeText(
                        'You will be notified once Necter is available for download. Until then we won\'t bother you with any promotions. Promise.',
                        textAlign: TextAlign.center,
                        minFontSize: 8,
                        maxFontSize: 12,
                        stepGranularity: 1,
                        overflowReplacement: Text(
                          'You will be notified once Necter is available for download.',
                          style: GoogleFonts.poppins(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500],
                          ),
                        ),
                        style: GoogleFonts.poppins(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
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
