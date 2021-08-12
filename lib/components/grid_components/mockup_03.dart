import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/constant_styles.dart';

class MockUp03 extends StatelessWidget {
  const MockUp03({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return Container(
            padding: gridItemMainPadding,
            color: thickPeriwinkle,
            child: Center(
              child: FractionallySizedBox(
                widthFactor: .5,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/home_screen_mockup.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
