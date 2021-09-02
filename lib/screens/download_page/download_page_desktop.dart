import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';
import 'dart:html' as html;

class DownloadPageDesktop extends StatefulWidget {
  @override
  _DownloadPageDesktopState createState() => _DownloadPageDesktopState();
}

class _DownloadPageDesktopState extends State<DownloadPageDesktop> {
  @override
  void initState() {
    super.initState();
    _redirectToDownload();
  }

  void _redirectToDownload() {
    if (Platform.isIOS) {
      html.window.open(
          'https://apps.apple.com/us/app/necter-offline-dating/id1546097364',
          'Necter');
    } else if (Platform.isAndroid) {
      print('Open Android Download Page');
    } else {
      print('Do nothing, show empty page');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Necter - Offline Dating',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.32,
                    height: MediaQuery.of(context).size.width * 0.32,
                    child: Image.asset(
                      'assets/app_icon.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Text(
                'DOWNLOAD',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
