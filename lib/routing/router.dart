import 'package:flutter/material.dart';
import 'package:necter_web/routing/route_names.dart';
import 'package:necter_web/views/about/about_view.dart';
import 'package:necter_web/views/contact/contact_view.dart';
import 'package:necter_web/views/home_view.dart';
import 'package:necter_web/views/legal/legal_document_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case ContactRoute:
      return _getPageRoute(ContactView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case TermsRoute:
      return _getPageRoute(
          LegalDocumentView('assets/terms_and_conditions.pdf'));
    case PrivacyRoute:
      return _getPageRoute(LegalDocumentView('assets/privacy_policy.pdf'));
    default:
      print('generate Route failed to default');
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
