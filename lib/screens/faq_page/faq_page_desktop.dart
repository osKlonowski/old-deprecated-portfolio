import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:necter_web/components/footer/footer.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';
import 'package:necter_web/models/classes/faq_item.dart';

List<FAQItem> generateItems(int numberOfItems) {
  return List<FAQItem>.generate(numberOfItems, (int index) {
    return FAQItem(
      question: 'What is the maximum radius?',
      answer: '1 kilometer',
    );
  });
}

class FAQPageDesktop extends StatefulWidget {
  @override
  _FAQPageDesktopState createState() => _FAQPageDesktopState();
}

class _FAQPageDesktopState extends State<FAQPageDesktop> {
  final List<FAQItem> _data = generateItems(12);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _data[index].isExpanded = !isExpanded;
                    });
                  },
                  children: _data.map<ExpansionPanel>((FAQItem item) {
                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(
                            item.question,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                            ),
                          ),
                        );
                      },
                      body: ListTile(
                        title: Text(
                          item.answer,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.0,
                          ),
                        ),
                        // subtitle: const Text(
                        //   'To delete this panel, tap the trash can icon',
                        // ),
                      ),
                      isExpanded: item.isExpanded,
                    );
                  }).toList(),
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
