import 'package:flutter/material.dart';
import 'package:necter_web/locator.dart';
import 'package:necter_web/routing/route_names.dart';
import 'package:necter_web/routing/router.dart';
import 'package:necter_web/services/navigation_service.dart';
import 'package:necter_web/views/layout_template/layout_template.dart';

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
      // routes: {
      //   HomeView.route: (context) => HomeView(),
      //   AboutView.route: (context) => AboutView(),
      //   ContactView.route: (context) => ContactView(),
      //   LegalDocumentView.privacyRoute: (context) => LegalDocumentView('assets/privacy_policy.pdf'),
      //   LegalDocumentView.termsRoute: (context) => LegalDocumentView('assets/terms_and_conditions.pdf'),
      // },
      home: LayoutTemplate(),
      builder: (BuildContext context, Widget child) => LayoutTemplate(child: child),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}


