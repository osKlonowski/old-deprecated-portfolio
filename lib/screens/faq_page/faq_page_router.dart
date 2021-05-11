import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/screens/contact_page/contact_page_desktop.dart';
import 'package:necter_web/screens/faq_page/faq_page_desktop.dart';
import 'package:necter_web/screens/faq_page/faq_page_mobile.dart';
import 'package:necter_web/utils/responsive.dart';

class FAQPageRouter extends StatelessWidget {
  const FAQPageRouter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Responsive(
        desktop: FAQPageDesktop(),
        tablet: FAQPageDesktop(),
        mobile: FAQPageMobile(),
      ),
    );
  }
}
