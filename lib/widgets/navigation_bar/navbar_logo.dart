import 'package:flutter/material.dart';
import 'package:necter_web/locator.dart';
import 'package:necter_web/services/navigation_service.dart';

class NavBarLogo extends StatelessWidget {
  final String navigationPath;
  const NavBarLogo(this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: SizedBox(
        height: 160,
        width: 200,
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}
