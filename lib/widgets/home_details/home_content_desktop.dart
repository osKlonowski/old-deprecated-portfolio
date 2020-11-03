import 'package:flutter/material.dart';
import 'package:necter_web/widgets/call_to_action/call_to_action.dart';
import 'package:necter_web/widgets/home_details/home_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        HomeDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Download Now'),
          ),
        )
      ],
    );
  }
}