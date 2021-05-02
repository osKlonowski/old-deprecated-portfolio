import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:necter_web/screens/contact_page/contact_page_router.dart';
import 'package:necter_web/screens/faq_page/faq_page_router.dart';
import 'package:necter_web/screens/home_page/home_page_router.dart';
import 'package:necter_web/screens/legal/privacy_policy.dart';
import 'package:necter_web/screens/legal/terms_and_conditions.dart';
import 'package:necter_web/views/legal/imprint_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Necter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: EasyLoading.init(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePageRouter(),
        '/contact': (context) => ContactPageRouter(),
        '/faq': (context) => FAQPageRouter(),
        '/terms-and-conditions': (context) =>
            TermsAndConditions(docPath: 'assets/terms_and_conditions.pdf'),
        '/privacy-policy': (context) =>
            PrivacyPolicy(docPath: 'assets/privacy_policy.pdf'),
        '/imprint': (context) => Imprint(),
      },
    );
  }
}
