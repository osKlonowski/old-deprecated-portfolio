import 'package:flutter/material.dart';
import 'package:necter_web/widgets/call_to_action/call_to_action.dart';
import 'package:necter_web/widgets/home_details/home_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 45, bottom: 25),
            child: Row(
              children: <Widget>[
                HomeDetails(),
                Expanded(
                  child: Center(
                    child: CallToAction('Download Now'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
