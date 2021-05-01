import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/text_styles.dart';
import 'dart:html' as html;

class Footer extends StatelessWidget {
  const Footer({Key key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
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
                    Text(
                      'Guidelines',
                      style: kFooterLinkTextStyle,
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
                    Text(
                      'Privacy Policy',
                      style: kFooterLinkTextStyle,
                    ),
                    Text(
                      'Terms of Service',
                      style: kFooterLinkTextStyle,
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
                        html.window.open('https://www.instagram.com/necter/',
                            'Necter-Instagram');
                      },
                      child: Text(
                        'Instagram',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO: FIX-LINK URL
                        html.window.open(
                            'https://www.facebook.com/Necter-110394790575070',
                            'Necter-Facebook');
                      },
                      child: Text(
                        'Facebook',
                        style: kFooterLinkTextStyle,
                      ),
                    ),
                    // Text(
                    //   'Blog',
                    //   style: kFooterLinkTextStyle,
                    // ),
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
                  '© Copyright TUNED BKT UG (haftungsbestrankt) 2021 - All Rights Reserved',
                  textAlign: TextAlign.left,
                  style: kFooterLinkTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
