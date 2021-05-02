import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/screens/contact_page/contact_page_desktop.dart';
import 'package:necter_web/screens/contact_page/contact_page_mobile.dart';
import 'package:necter_web/utils/responsive.dart';

class ContactPageRouter extends StatelessWidget {
  const ContactPageRouter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      body: Responsive(
        desktop: ContactPageDesktop(),
        tablet: ContactPageDesktop(),
        mobile: ContactPageMobile(),
      ),
    );
  }
}
