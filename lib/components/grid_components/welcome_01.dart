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
            ),
          );
        },
      ),
    );
  }
}
