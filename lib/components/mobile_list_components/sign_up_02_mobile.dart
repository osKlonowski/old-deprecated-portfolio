import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';
import 'package:necter_web/utils/database.dart';

class SignUp02Mobile extends StatefulWidget {
  const SignUp02Mobile({Key key}) : super(key: key);

  @override
  _SignUp02MobileState createState() => _SignUp02MobileState();
}

class _SignUp02MobileState extends State<SignUp02Mobile> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  bool _loading = false;

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
                child: Form(
                  key: _formKey,
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
                        width: constraints.maxWidth * 0.65,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.65,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text:
                                'By clicking \'Get Notified\' you agree to our ',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white60,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Terms and Conditions',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueAccent,
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
                                  color: Colors.white60,
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Policy.',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueAccent,
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
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: () async {
                            setState(() {
                              _loading = true;
                            });
                            if (_formKey.currentState.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              _formKey.currentState.save();
                              final String name = _nameController.value.text;
                              final String email = _emailController.value.text;
                              print('$name + $email');
                              subscribeToEarlySignUp(name, email);
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: green,
                                  content: Text(
                                    'Thank you $name! You will be notified once Necter is released.',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              );
                            }
                            setState(() {
                              _loading = false;
                            });
                            _formKey.currentState.reset();
                          },
                          child: _loading
                              ? SizedBox(
                                  width: 18,
                                  height: 18,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.white),
                                  ),
                                )
                              : Container(
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
                        ),
                      ),
                      Flexible(
                        child: AutoSizeText(
                          'You will be notified once Necter is available for download. Until then we won\'t bother you with any promotions. Promise.',
                          textAlign: TextAlign.center,
                          minFontSize: 8,
                          maxFontSize: 11,
                          stepGranularity: 1,
                          overflowReplacement: SizedBox.shrink(),
                          style: GoogleFonts.poppins(
                            fontSize: 8.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white54,
                          ),
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
