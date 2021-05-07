import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necter_web/components/how_it_works/description_element.dart';
import 'package:necter_web/components/how_it_works/small_frame_feature.dart';
import 'package:necter_web/components/how_it_works/title_element.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/screens/how_it_works_page/howitworks_page_desktop.dart';
import 'package:necter_web/screens/how_it_works_page/howitworks_page_mobile.dart';
import 'package:necter_web/utils/responsive.dart';

List<Widget> _smallFeatures = <Widget>[
  SmallFrameFeatures(
    title: 'That smile across the room',
    description:
        'Sitting on the metro, cafe or a park and already caught eye contact? Time to make your move.',
    backgroundColor: blue,
    iconColor: Colors.white,
    textColor: Colors.white,
    icon: FontAwesomeIcons.smileWink,
  ),
  SmallFrameFeatures(
    title: 'Match Your Interests',
    description:
        'Go about your day, follow your hobbies and passions and meet people that share your interests.',
    backgroundColor: green,
    iconColor: Colors.white,
    textColor: Colors.white,
    icon: FontAwesomeIcons.laughWink,
  ),
  SmallFrameFeatures(
    title: 'COVID-19',
    description:
        'People often wear masks and spontaneous interaction is  discouraged, yet Necter lets you see behind the mask and makes starting a conversation safe and easy.',
    backgroundColor: red,
    iconColor: Colors.white,
    textColor: Colors.white,
    icon: FontAwesomeIcons.theaterMasks,
  ),
];

List<Widget> _gridElements = <Widget>[
  TitleElement(
    title: 'Process',
    icon: FontAwesomeIcons.watchmanMonitoring,
    iconColor: red,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    alignBox: CrossAxisAlignment.start,
    alignText: TextAlign.left,
  ),
  DescriptionElement(
    description:
        'By combining the importance of spontaneity with an emphasis on a non-invasive factor we have created a process that facilitates the natural and momentary desire for human connection. A curated 20 minute time-frame encourages stepping out of your comfort zone and promotes real-life dating.',
    backgroundColor: blue,
    textColor: Colors.white,
    textAlign: TextAlign.right,
  ),
  DescriptionElement(
    description:
        '“Tool not service” has been the driving force in the innovation of our mobile app. Implementation of blurred pictures for increased user safety and the adjustable proximity focus of the matchmaking algorithm allow for a real-world connection to be made with the use of our mobile tool.',
    backgroundColor: green,
    textColor: Colors.white,
    textAlign: TextAlign.left,
  ),
  TitleElement(
    title: 'Technology',
    icon: FontAwesomeIcons.users,
    iconColor: blue,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    alignBox: CrossAxisAlignment.end,
    alignText: TextAlign.right,
  ),
];

List<Widget> _mobileGridElements = <Widget>[
  TitleElement(
    title: 'Process',
    icon: FontAwesomeIcons.watchmanMonitoring,
    iconColor: red,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    alignBox: CrossAxisAlignment.start,
    alignText: TextAlign.left,
  ),
  DescriptionElement(
    description:
        'By combining the importance of spontaneity with an emphasis on a non-invasive factor we have created a process that facilitates the natural and momentary desire for human connection. A curated 20 minute time-frame encourages stepping out of your comfort zone and promotes real-life dating.',
    backgroundColor: blue,
    textColor: Colors.white,
    textAlign: TextAlign.right,
  ),
  TitleElement(
    title: 'Technology',
    icon: FontAwesomeIcons.users,
    iconColor: blue,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    alignBox: CrossAxisAlignment.end,
    alignText: TextAlign.right,
  ),
  DescriptionElement(
    description:
        '“Tool not service” has been the driving force in the innovation of our mobile app. Implementation of blurred pictures for increased user safety and the adjustable proximity focus of the matchmaking algorithm allow for a real-world connection to be made with the use of our mobile tool.',
    backgroundColor: green,
    textColor: Colors.white,
    textAlign: TextAlign.left,
  ),
];

class HowItWorksPageRouter extends StatelessWidget {
  const HowItWorksPageRouter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      body: Responsive(
        desktop: HowItWorksPageDesktop(_gridElements, _smallFeatures),
        tablet: HowItWorksPageDesktop(_gridElements, _smallFeatures),
        mobile: HowItWorksPageMobile(_smallFeatures + _mobileGridElements),
      ),
    );
  }
}
