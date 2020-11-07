import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:necter_web/locator.dart';
import 'package:necter_web/routing/route_names.dart';
import 'package:necter_web/routing/router.dart';
import 'package:necter_web/services/navigation_service.dart';
import 'package:necter_web/views/about/about_view.dart';
import 'package:necter_web/views/contact/contact_view.dart';
import 'package:necter_web/views/home_view.dart';
import 'package:necter_web/views/layout_template/layout_template.dart';
import 'package:necter_web/views/legal/legal_document_view.dart';

void main() {
  setupLocator();
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
      routes: {
        HomeView.route: (context) => LayoutTemplate(child: HomeView()),
        AboutView.route: (context) => LayoutTemplate(child: AboutView()),
        ContactView.route: (context) => LayoutTemplate(child: ContactView()),
        LegalDocumentView.privacyRoute: (context) => LegalDocumentView('assets/privacy_policy.pdf'),
        LegalDocumentView.termsRoute: (context) => LegalDocumentView('assets/terms_and_conditions.pdf'),
      },
      home: LayoutTemplate(child: HomeView()),
      builder: (BuildContext context, Widget child) => FlutterEasyLoading(child: child),
      // navigatorKey: locator<NavigationService>().navigatorKey,
      // onGenerateRoute: generateRoute,
      initialRoute: HomeView.route,
    );
  }
}


