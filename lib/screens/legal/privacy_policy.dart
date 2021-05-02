import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:native_pdf_renderer/native_pdf_renderer.dart';
import 'package:necter_web/components/footer/footer.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';
import 'package:necter_web/constants/app_colors.dart';

class PrivacyPolicy extends StatefulWidget {
  final String docPath;
  const PrivacyPolicy({Key key, this.docPath}) : super(key: key);

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  PdfDocument document;
  PdfPage page;
  PdfPageImage pageImage;
  bool isLoaded = false;
  int pageNum = 1;

  @override
  void initState() {
    _getPdfDoc();
    super.initState();
  }

  _getPdfDoc() async {
    try {
      document = await PdfDocument.openAsset(widget.docPath);
      print('Doc has ${document.pagesCount} pages');
      page = await document.getPage(pageNum);
      await page.render(width: page.width, height: page.height).then((value) {
        setState(() {
          pageImage = value;
          isLoaded = true;
        });
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  _loadNextPage() async {
    if (pageNum + 1 <= document.pagesCount) {
      try {
        setState(() {
          isLoaded = false;
        });
        page = await document.getPage(pageNum + 1);
        await page.render(width: page.width, height: page.height).then((value) {
          setState(() {
            pageNum++;
            pageImage = value;
            isLoaded = true;
          });
        });
      } on PlatformException catch (e) {
        EasyLoading.showError(e.toString());
      }
    } else {
      EasyLoading.showToast(
        'You have reached the end of the document.',
        toastPosition: EasyLoadingToastPosition.bottom,
      );
    }
  }

  _loadPrevPage() async {
    if (pageNum - 1 > 0) {
      try {
        setState(() {
          isLoaded = false;
        });
        page = await document.getPage(pageNum - 1);
        await page.render(width: page.width, height: page.height).then((value) {
          setState(() {
            pageNum--;
            pageImage = value;
            isLoaded = true;
          });
        });
      } on PlatformException catch (e) {
        EasyLoading.showError(e.toString());
      }
    } else {
      EasyLoading.showToast('This is the beginning of the document.',
          toastPosition: EasyLoadingToastPosition.bottom);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            SizedBox(
              width: _size.width,
              height: _size.height,
              child: Stack(
                children: [
                  ConditionalBuilder(
                    condition: isLoaded,
                    builder: (context) {
                      return Positioned.fill(
                        child: Image(
                          height: _size.height,
                          image: MemoryImage(pageImage.bytes),
                        ),
                      );
                    },
                    fallback: (context) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 60,
                    right: 60,
                    child: TextButton(
                      child: Text('Next Page'),
                      onPressed: () {
                        _loadNextPage();
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 60,
                    child: TextButton(
                      child: Text('Previous Page'),
                      onPressed: () {
                        _loadPrevPage();
                      },
                    ),
                  ),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() async {
    await page.close();
    await document.close();
    super.dispose();
  }
}
