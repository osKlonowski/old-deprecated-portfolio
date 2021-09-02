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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _redirectToDownload());
  }

  void _redirectToDownload() {
    if (kIsWeb) {
      print('on the web');
    } else {
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
                                    Text(
                                      'Necter - Offline Dating',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
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
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          color: Colors.black,
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 4.0,
                                          )),
                                      child: Center(
                                        child: Text(
                                          'DOWNLOAD',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
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
