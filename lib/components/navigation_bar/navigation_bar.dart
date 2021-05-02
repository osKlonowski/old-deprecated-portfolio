import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/text_styles.dart';
import 'package:necter_web/utils/global_func.dart';

final double kTextPaddingNavBar = 18;

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: verticalRedNavBarGradient,
      ),
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  "Coming in June 2021",
                  style: kNavBarTextStyle.copyWith(
                    fontSize: isMobile(context) ? 14 : 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/faq');
                },
                child: Padding(
                  padding: EdgeInsets.only(left: kTextPaddingNavBar),
                  child: Text(
                    'FAQ',
                    style: kNavBarTextStyle.copyWith(
                      fontSize: isMobile(context) ? 14 : 18,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/contact');
                },
                child: Padding(
                  padding: EdgeInsets.only(left: kTextPaddingNavBar),
                  child: Text(
                    'CONTACT',
                    style: kNavBarTextStyle.copyWith(
                      fontSize: isMobile(context) ? 14 : 18,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  EasyLoading.showInfo('Available in June 2021');
                },
                child: Padding(
                  padding: EdgeInsets.only(left: kTextPaddingNavBar),
                  child: Text(
                    'DOWNLOAD',
                    style: kNavBarTextStyle.copyWith(
                      fontSize: isMobile(context) ? 14 : 18,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
