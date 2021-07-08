import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';

class OldSchool06 extends StatelessWidget {
  const OldSchool06({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            color: green,
            padding: gridItemMainPadding,
            child: Center(
              child: SizedBox(
                width: constraints.maxWidth / 1.618,
                height: constraints.maxHeight / 1.618,
                child: Image.asset(
                  'assets/animations/old_school.png',
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
