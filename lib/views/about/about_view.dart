import 'package:flutter/material.dart';
import 'package:necter_web/views/about/about_content_desktop.dart';
import 'package:necter_web/views/about/about_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);
  static const String route = '/about';

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutContentMobile(),
      desktop: AboutContentDesktop(),
    );
  }
}