import 'package:flutter/material.dart';
import 'package:necter_web/locator.dart';
import 'package:necter_web/routing/route_names.dart';
import 'package:necter_web/services/navigation_service.dart';
import 'package:necter_web/widgets/centered_view/centered_view.dart';
import 'package:necter_web/widgets/nav_drawer/navigation_drawer.dart';
import 'package:necter_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: child,
              ),
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          FlatButton(
            child: _text('Privacy Policy'),
            onPressed: () => locator<NavigationService>().navigateTo(PrivacyRoute),
          ),
          FlatButton(
            child: _text('Terms and Conditions'),
            onPressed: () => locator<NavigationService>().navigateTo(TermsRoute),
          ),
        ],
      ),
    );
  }

  Widget _text(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 12.0),
    );
  }
}


// Navigator(
//   key: locator<NavigationService>().navigatorKey,
//   onGenerateRoute: generateRoute,
//   initialRoute: HomeRoute,
// ),