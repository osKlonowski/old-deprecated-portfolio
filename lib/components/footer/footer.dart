import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/text_styles.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(26.0),
      color: red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
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
                    Text(
                      'FAQ',
                      style: kFooterLinkTextStyle,
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
                    Text(
                      'Press',
                      style: kFooterLinkTextStyle,
                    ),
                    Text(
                      'Jobs',
                      style: kFooterLinkTextStyle,
                    ),
                    Text(
                      'Copyright Inquiry',
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
                //Connect
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'CONNECT',
                      style: kFooterSectionTitleTextStyle,
                    ),
                    Text(
                      'Instagram',
                      style: kFooterLinkTextStyle,
                    ),
                    Text(
                      'Facebook',
                      style: kFooterLinkTextStyle,
                    ),
                    Text(
                      'Blog',
                      style: kFooterLinkTextStyle,
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
                  '@Copyright bla bla bla.',
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
