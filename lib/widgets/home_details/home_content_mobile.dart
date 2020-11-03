import 'package:flutter/material.dart';
import 'package:necter_web/widgets/call_to_action/call_to_action.dart';
import 'package:necter_web/widgets/home_details/home_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        HomeDetails(),
        SizedBox(height: 100,),
        CallToAction('Download'),
      ],
    );
  }
}