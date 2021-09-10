import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/components/footer/footer.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';
import 'dart:html' as html;

import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/utils/global_func.dart';

class DownloadPageDesktop extends StatefulWidget {
  @override
  _DownloadPageDesktopState createState() => _DownloadPageDesktopState();
}

class _DownloadPageDesktopState extends State<DownloadPageDesktop> {
  String _extraScript = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _redirectToDownload());
  }

  void _redirectToDownload() {
    if (kIsWeb) {
      print('on the web');
      if (defaultTargetPlatform == TargetPlatform.iOS) {
        html.window.open(
            'https://apps.apple.com/us/app/necter-offline-dating/id1546097364',
            'Necter - IOS');
      } else if (defaultTargetPlatform == TargetPlatform.android) {
        html.window.open(
            'https://play.google.com/store/apps/details?id=io.tuned.bkt.necter',
            'Necter - Android');
      } else {
        print('Please view this page on a mobile device!');
        setState(() {
          _extraScript = 'Please view this page on a mobile device.';
        });
      }
    } else {
      print('Do nothing, show empty page');
      setState(() {
        _extraScript = 'Please view this page on a mobile device.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverFillViewport(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext ctx, BoxConstraints constraints) {
                          return Container(
                            decoration: BoxDecoration(
                              // gradient: blueGreenGradient,
                              color: Colors.black,
                            ),
                            child: Center(
                              child: SizedBox(
                                width: isMobile(context)
                                    ? constraints.maxWidth * 0.7
                                    : constraints.maxWidth * 0.4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Text(
                                        'Necter - Offline Dating',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        child: SizedBox(
                                          width: 200,
                                          height: 200,
                                          child: Image.asset(
                                            'assets/app_icon.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: GestureDetector(
                                        onTap: _redirectToDownload,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 14,
                                            vertical: 10,
                                          ),
                                          margin: const EdgeInsets.only(
                                            left: 14.0,
                                            right: 14.0,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              color: Colors.white,
                                              border: Border.all(
                                                color: periwinkle,
                                                width: 4.0,
                                              )),
                                          child: Center(
                                            child: Text(
                                              'Download',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 4,
                                            child: GestureDetector(
                                              onTap: () {
                                                html.window.open(
                                                    'https://apps.apple.com/us/app/necter-offline-dating/id1546097364',
                                                    'Necter - IOS');
                                              },
                                              child: Image.asset(
                                                'assets/ios_badge.png',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: GestureDetector(
                                              onTap: () {
                                                html.window.open(
                                                    'https://play.google.com/store/apps/details?id=io.tuned.bkt.necter',
                                                    'Necter - Android');
                                              },
                                              child: Image.asset(
                                                'assets/android_badge.png',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    _extraScript.isNotEmpty
                                        ? Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Text(
                                              _extraScript,
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        : SizedBox.shrink(),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Footer(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
