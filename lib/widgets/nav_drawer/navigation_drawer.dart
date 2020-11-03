import 'package:flutter/material.dart';
import 'package:necter_web/routing/route_names.dart';
import 'package:necter_web/widgets/nav_drawer/drawer_item.dart';
import 'package:necter_web/widgets/nav_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('About', Icons.help, AboutRoute),
          DrawerItem('Contact', Icons.contact_phone, ContactRoute),
        ],
      ),
    );
  }
}
