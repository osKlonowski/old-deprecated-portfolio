import 'package:flutter/material.dart';
import 'package:necter_web/widgets/about_details/about_details.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AboutDetails(),
        SizedBox(height: 100,),
        Image.network('https://sobernation.com/wp-content/uploads/2020/06/Untitled-design-2.png'),
      ],
    );
  }
}