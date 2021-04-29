import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/screens/home_page/home_page_router.dart';
import 'package:necter_web/views/contact_view.dart';
import 'package:necter_web/views/home_view.dart';
import 'package:necter_web/views/legal/imprint_view.dart';
import 'package:necter_web/views/legal/legal_document_view.dart';
import 'package:splashscreen/splashscreen.dart';

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
      home: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: HomePageRouter(),
        title: Text(
          'Necter',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 50.0,
            color: Colors.white,
          ),
        ),
        image: Image.asset('assets/logo_white.png'),
        backgroundColor: red,
        photoSize: 80.0,
        loaderColor: Colors.white,
      ),
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
