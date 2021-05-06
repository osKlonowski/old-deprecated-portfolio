import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necter_web/components/how_it_works/description_element.dart';
import 'package:necter_web/components/how_it_works/title_element.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/screens/how_it_works_page/howitworks_page_desktop.dart';
import 'package:necter_web/screens/how_it_works_page/howitworks_page_mobile.dart';
import 'package:necter_web/utils/responsive.dart';

// 'Longer description of the feature that is being described here. Oh nice, that is what it does, ok cool.'

List<Widget> _gridElements = <Widget>[
  TitleElement(
    title: 'Proximity Dating',
    icon: FontAwesomeIcons.radiation,
    iconColor: red,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    alignBox: CrossAxisAlignment.start,
    alignText: TextAlign.left,
  ),
  DescriptionElement(
    description:
        'Based on a radius of upto a kilometer, you can match with other users and message them to begin your interaction',
    backgroundColor: blue,
    textColor: Colors.white,
    textAlign: TextAlign.right,
  ),
  DescriptionElement(
    description:
        'Blurred faces provide an extra layer of security to allow safe dating interactions in proximity. This allow you to stay annonymous if you choose to stay hidden to your nearby matches',
    backgroundColor: green,
    textColor: Colors.white,
    textAlign: TextAlign.left,
  ),
  TitleElement(
    title: 'Blurred Faces',
    icon: FontAwesomeIcons.userAltSlash,
    iconColor: blue,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    alignBox: CrossAxisAlignment.end,
    alignText: TextAlign.right,
  ),
  TitleElement(
    title: 'Automatic Background Search',
    icon: FontAwesomeIcons.radiation,
    iconColor: green,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    alignBox: CrossAxisAlignment.start,
    alignText: TextAlign.left,
  ),
  DescriptionElement(
    description:
        'With the use of Necter GO you wont miss your next date. If enable will give you the knowledge of nearby people that match your preferences.',
    backgroundColor: red,
    textColor: Colors.white,
    textAlign: TextAlign.right,
  ),
];

List<Widget> _mobileListElements = <Widget>[
  TitleElement(
    title: 'Proximity Dating',
    icon: FontAwesomeIcons.radiation,
    iconColor: red,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    alignBox: CrossAxisAlignment.start,
    alignText: TextAlign.left,
  ),
  DescriptionElement(
    description:
        'Based on a radius of upto a kilometer, you can match with other users and message them to begin your interaction',
    backgroundColor: blue,
    textColor: Colors.white,
    textAlign: TextAlign.right,
  ),
  DescriptionElement(
    description:
        'Blurred faces provide an extra layer of security to allow safe dating interactions in proximity. This allow you to stay annonymous if you choose to stay hidden to your nearby matches',
    backgroundColor: green,
    textColor: Colors.white,
    textAlign: TextAlign.left,
  ),
  TitleElement(
    title: 'Blurred Faces',
    icon: FontAwesomeIcons.userAltSlash,
    iconColor: blue,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    alignBox: CrossAxisAlignment.end,
    alignText: TextAlign.right,
  ),
  TitleElement(
    title: 'Automatic Background Search',
    icon: FontAwesomeIcons.radiation,
    iconColor: green,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    alignBox: CrossAxisAlignment.start,
    alignText: TextAlign.left,
  ),
  DescriptionElement(
    description:
        'With the use of Necter GO you wont miss your next date. If enable will give you the knowledge of nearby people that match your preferences.',
    backgroundColor: red,
    textColor: Colors.white,
    textAlign: TextAlign.right,
  ),
];

class HowItWorksPageRouter extends StatelessWidget {
  const HowItWorksPageRouter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      body: Responsive(
        desktop: HowItWorksPageDesktop(_gridElements),
        tablet: HowItWorksPageDesktop(_mobileListElements),
        mobile: HowItWorksPageMobile(_mobileListElements),
      ),
    );
  }
}
