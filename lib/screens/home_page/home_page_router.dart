import 'package:flutter/material.dart';
import 'package:necter_web/components/grid_components/be_there_05.dart';
import 'package:necter_web/components/grid_components/mockup_03.dart';
import 'package:necter_web/components/grid_components/old_school_06.dart';
import 'package:necter_web/components/grid_components/say_hi_04.dart';
import 'package:necter_web/components/grid_components/sign_up_02.dart';
import 'package:necter_web/components/grid_components/welcome_01.dart';
import 'package:necter_web/components/mobile_list_components/be_there_05_mobile.dart';
import 'package:necter_web/components/mobile_list_components/sign_up_02_mobile.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/screens/home_page/home_page_desktop.dart';
import 'package:necter_web/screens/home_page/home_page_mobile.dart';
import 'package:necter_web/utils/responsive.dart';

List<Widget> _gridElements = <Widget>[
  Welcome01(),
  SignUp02(),
  MockUp03(),
  SayHi04(),
  BeThere05(),
  OldSchool06(),
];

List<Widget> _mobileGridElements = <Widget>[
  Welcome01(),
  SignUp02Mobile(),
  MockUp03(),
  SayHi04(),
  BeThere05Mobile(),
  OldSchool06(),
];

class HomePageRouter extends StatelessWidget {
  const HomePageRouter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      body: Responsive(
        desktop: HomePageDesktop(_gridElements),
        tablet: HomePageDesktop(_gridElements),
        mobile: HomePageMobile(_mobileGridElements),
      ),
    );
  }
}
