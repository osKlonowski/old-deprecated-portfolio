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
      padding: EdgeInsets.symmetric(
        horizontal: isMobile(context) ? 20 : 45,
        vertical: isMobile(context) ? 22 : 28,
      ),
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
                  'NECTER',
                  style: kNavBarTextStyle.copyWith(
                    fontSize: isMobile(context) ? 13 : 19,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  isMobile(context) ? "Coming Soon" : "Coming in June 2021",
                  style: kNavBarTextStyle.copyWith(
                    fontSize: isMobile(context) ? 12 : 18,
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
                      fontSize: isMobile(context) ? 12 : 18,
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
                      fontSize: isMobile(context) ? 12 : 18,
                    ),
                  ),
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //     EasyLoading.showInfo('Available in June 2021');
              //   },
              //   child: Padding(
              //     padding: EdgeInsets.only(left: kTextPaddingNavBar),
              //     child: Text(
              //       'DOWNLOAD',
              //       style: kNavBarTextStyle.copyWith(
              //         fontSize: isMobile(context) ? 14 : 18,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
