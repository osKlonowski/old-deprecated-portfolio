import 'package:flutter/material.dart';
import 'package:necter_web/widgets/home_details/home_content_desktop.dart';
import 'package:necter_web/widgets/home_details/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);
  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    //EasyLoading.showToast('This website does not collect any cookies!');
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}
