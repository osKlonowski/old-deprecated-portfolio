import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/text_styles.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:necter_web/utils/global_func.dart';

class Footer extends StatelessWidget {
  const Footer({Key key});

  @override
  Widget build(BuildContext context) {
    // Size _size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(26.0),
      color: red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Safety
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'SAFETY',
                      style: kFooterSectionTitleTextStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/faq');
                      },
                      child: Text(
                        'FAQ',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 14),
                Flexible(
                  child: VerticalDivider(
                    width: 1,
                    thickness: 1,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 14),
                //Company
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'COMPANY',
                      style: kFooterSectionTitleTextStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/en-privacy-policy');
                      },
                      child: Text(
                        'EN - Privacy Policy',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/de-privacy-policy');
                      },
                      child: Text(
                        'DE - Privacy Policy',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, '/en-terms-and-conditions');
                      },
                      child: Text(
                        'EN - Terms of Service',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, '/de-terms-and-conditions');
                      },
                      child: Text(
                        'DE - Terms of Service',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                      child: Text(
                        'Imprint',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, '/contact');
                    //   },
                    //   child: Text(
                    //     'Imprint',
                    //     style: kFooterLinkTextStyle,
                    //   ),
                    // )
                  ],
                ),
                SizedBox(width: 14),
                Flexible(
                  child: VerticalDivider(
                    width: 1,
                    thickness: 1,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 14),
                //Connect
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'CONNECT',
                      style: kFooterSectionTitleTextStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                      child: Text(
                        'Contact',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        html.window.open(
                          'https://www.instagram.com/necter/',
                          'Necter-Instagram',
                        );
                      },
                      child: Text(
                        'Instagram',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        html.window.open(
                          'https://www.facebook.com/Necter-110394790575070',
                          'Necter-Facebook',
                        );
                      },
                      child: Text(
                        'Facebook',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '© Copyright TUNED BKT UG 2021 - All Rights Reserved',
                  textAlign: TextAlign.left,
                  style: kFooterLinkTextStyle.copyWith(
                    fontSize: isMobile(context) ? 11 : 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
