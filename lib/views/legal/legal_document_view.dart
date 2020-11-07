import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:native_pdf_renderer/native_pdf_renderer.dart';

class LegalDocumentView extends StatefulWidget {
  final String docPath;
  const LegalDocumentView(this.docPath);

  @override
  _LegalDocumentViewState createState() => _LegalDocumentViewState();
}

class _LegalDocumentViewState extends State<LegalDocumentView> {
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
        //EasyLoading.showError(e.toString());
      }
    } else {
      //EasyLoading.showToast('You have reached the end of the document.', toastPosition: EasyLoadingToastPosition.bottom);
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
        //EasyLoading.showError(e.toString());
      }
    } else {
      //EasyLoading.showToast('This is the beginning of the document.', toastPosition: EasyLoadingToastPosition.bottom);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Stack(
            children: [
              ConditionalBuilder(
                condition: isLoaded,
                builder: (context) {
                  return Positioned.fill(
                    child: Image(
                      height: constraints.maxHeight,
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
                bottom: 20,
                right: 20,
                child: FlatButton(
                  child: Text('Next Page'),
                  onPressed: () {
                    _loadNextPage();
                  },
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: FlatButton(
                  child: Text('Previous Page'),
                  onPressed: () {
                    _loadPrevPage();
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  @override
  void dispose() async {
    await page.close();
    await document.close();
    super.dispose();
  }
}
