import 'package:flutter/material.dart';
import 'package:necter_web/routing/route_names.dart';
import 'package:necter_web/widgets/navigation_bar/navbar_item.dart';
import 'package:necter_web/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(HomeRoute),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('About', AboutRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Contact', ContactRoute),
            ],
          )
        ],
      ),
    );
  }
}
