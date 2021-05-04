import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';
import 'package:necter_web/utils/database.dart';

class SignUp02 extends StatefulWidget {
  const SignUp02({Key key}) : super(key: key);

  @override
  _SignUp02State createState() => _SignUp02State();
}

class _SignUp02State extends State<SignUp02> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

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
                width: constraints.maxWidth * 0.65,
                height: constraints.maxHeight * 0.65,
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  color: Colors.white,
                  child: Form(
                    key: _formKey,
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
                          width: constraints.maxWidth * 0.5,
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
                                  child: TextFormField(
                                    controller: _nameController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Name',
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          !value.contains(
                                              RegExp('([a-zA-Z]{3,30}\s*)+'))) {
                                        return 'Enter a valid first name';
                                      }
                                      return null;
                                    },
                                    onSaved: (String val) {
                                      //Do something?
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.5,
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
                                    child: TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email Address',
                                  ),
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        !value.contains(RegExp(
                                            r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)'))) {
                                      return 'Enter a valid email address';
                                    }
                                    return null;
                                  },
                                  onSaved: (String val) {
                                    //Should use to update db???
                                  },
                                )),
                              ],
                            ),
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text:
                                'By clicking \'Get Notified\' you agree to our ',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[700],
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Terms and Conditions',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueGrey,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, '/terms-and-conditions');
                                  },
                              ),
                              TextSpan(
                                text: ' and ',
                                style: GoogleFonts.poppins(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blueGrey),
                              ),
                              TextSpan(
                                text: 'Privacy Policy.',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueGrey,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, '/privacy-policy');
                                  },
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              _formKey.currentState.save();
                              print(_nameController.value.text);
                              print(_emailController.value.text);
                              subscribeToEarlySignUp(_nameController.value.text,
                                  _emailController.value.text);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: green,
                                  content: Text(
                                    'Thank you! You will be notified once Necter is released.',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              );
                              _formKey.currentState.reset();
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 8.0,
                            ),
                            decoration: BoxDecoration(
                              gradient: redBlueGradient,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Text(
                              'Get Notified',
                              style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
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
                              fontSize: 8.0,
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
            ),
          );
        },
      ),
    );
  }
}
