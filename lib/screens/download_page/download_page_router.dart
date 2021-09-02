import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/screens/download_page/download_page_desktop.dart';
import 'package:necter_web/screens/download_page/download_page_mobile.dart';
import 'package:necter_web/utils/responsive.dart';

class DownloadPageRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      body: Responsive(
        desktop: DownloadPageDesktop(),
        tablet: DownloadPageDesktop(),
        mobile: DownloadPageDesktop(),
      ),
    );
  }
}
