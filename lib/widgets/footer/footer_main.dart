import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: FooterMobile(),
      tablet: FooterDesktop(),
    );
  }
}

class FooterMobile extends StatelessWidget {
  const FooterMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Mobile Footer'),
    );
  }
}

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Desktop Footer'),
    );
  }
}