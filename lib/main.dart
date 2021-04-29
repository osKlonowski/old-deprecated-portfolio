import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:necter_web/screens/home_page/home_page_router.dart';
import 'package:necter_web/views/contact_view.dart';
import 'package:necter_web/views/home_view.dart';
import 'package:necter_web/views/legal/imprint_view.dart';
import 'package:necter_web/views/legal/legal_document_view.dart';

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
      home: HomePageRouter(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => HomeView(),
      //   '/contact': (context) => ContactView(),
      //   '/terms-and-conditions': (context) =>
      //       LegalDocumentView('assets/terms_and_conditions.pdf'),
      //   '/privacy-policy': (context) =>
      //       LegalDocumentView('assets/privacy_policy.pdf'),
      //   '/imprint': (context) => Imprint(),
      // },
    );
  }
}
