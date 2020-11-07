import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:necter_web/locator.dart';
import 'package:necter_web/routing/route_names.dart';
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
      home: LayoutTemplate(),
      builder: (BuildContext context, Widget child) => FlutterEasyLoading(child: child),
      // navigatorKey: locator<NavigationService>().navigatorKey,
      // onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}


