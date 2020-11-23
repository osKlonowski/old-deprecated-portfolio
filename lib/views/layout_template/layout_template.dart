import 'package:flutter/material.dart';
import 'package:necter_web/locator.dart';
import 'package:necter_web/routing/route_names.dart';
import 'package:necter_web/routing/router.dart';
import 'package:necter_web/services/navigation_service.dart';
import 'package:necter_web/widgets/centered_view/centered_view.dart';
import 'package:necter_web/widgets/nav_drawer/navigation_drawer.dart';
import 'package:necter_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

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
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          FlatButton(
            child: _text('Privacy Policy'),
            onPressed: () => Navigator.pushNamed(context, '/privacy-policy'),
          ),
          FlatButton(
            child: _text('Terms and Conditions'),
            onPressed: () => Navigator.pushNamed(context, '/terms-and-conditions'),
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
