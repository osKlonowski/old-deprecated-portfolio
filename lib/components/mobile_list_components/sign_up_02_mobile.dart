import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';

class SignUp02Mobile extends StatelessWidget {
  const SignUp02Mobile({Key key}) : super(key: key);

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
              child: Container(
                padding: const EdgeInsets.all(12.0),
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Early Sign Up',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.6,
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
                      width: constraints.maxWidth * 0.6,
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
                    Text(
                      'By clicking submit you agree to our Terms and Conditions and our Privacy Policy.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white60,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 8.0,
                      ),
                      decoration: BoxDecoration(
                        // gradient: redBlueGradient,
                        color: green,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Text(
                        'Get Notified',
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      'You will be notified once Necter is available for download. Until then we won\'t bother you with any promotions. Promise.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white54,
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
