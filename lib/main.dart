import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:necter_web/locator.dart';
import 'package:necter_web/routing/route_names.dart';
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
      home: LayoutTemplate(),
      builder: (BuildContext context, Widget child) => FlutterEasyLoading(child: child),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeView(),
        '/terms-and-conditions': (context) => LegalDocumentView('assets/terms_and_conditions.pdf'),
        '/privacy-policy': (context) => LegalDocumentView('assets/privacy_policy.pdf'),
        '/contact': (context) => ContactView(),
        '/about': (context) => AboutView(),
      },
    );
  }
}
