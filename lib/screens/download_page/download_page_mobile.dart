import 'package:flutter/material.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';

class DownloadPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size _size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: Container(
            child: Center(
              child: Text('Download'),
            ),
          ),
        ),
      ],
    );
  }
}
