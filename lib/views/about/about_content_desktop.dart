import 'package:flutter/material.dart';
import 'package:necter_web/widgets/about_details/about_details.dart';

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AboutDetails(),
        Expanded(
          child: Center(
            child: Image.network('https://sobernation.com/wp-content/uploads/2020/06/Untitled-design-2.png'),
          ),
        )
      ],
    );
  }
}