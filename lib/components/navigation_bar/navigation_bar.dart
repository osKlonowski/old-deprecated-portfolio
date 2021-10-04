import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/text_styles.dart';
import 'package:necter_web/utils/global_func.dart';

final double kTextPaddingNavBar = 18;

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: periwinkle,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile(context) ? 20 : 45,
        vertical: isMobile(context) ? 22 : 28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'NECTER',
                  style: kNavBarTextStyle.copyWith(
                    fontSize: isMobile(context) ? 13 : 19,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/download');
                },
                child: Padding(
                  padding: EdgeInsets.only(left: kTextPaddingNavBar),
                  child: Text(
                    'DOWNLOAD',
                    style: kNavBarTextStyle.copyWith(
                      fontSize: isMobile(context) ? 11 : 18,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/faq');
                },
                child: Padding(
                  padding: EdgeInsets.only(left: kTextPaddingNavBar),
                  child: Text(
                    'FAQ',
                    style: kNavBarTextStyle.copyWith(
                      fontSize: isMobile(context) ? 11 : 18,
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
                      fontSize: isMobile(context) ? 11 : 18,
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
