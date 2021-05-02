import 'package:flutter/material.dart';
import 'package:necter_web/components/contact_widgets/contact_grid_01.dart';
import 'package:necter_web/components/contact_widgets/contact_grid_02.dart';
import 'package:necter_web/components/footer/footer.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';

final List<Widget> contactGridItems = <Widget>[
  ContactGrid1(),
  ContactGrid2(),
];

class ContactPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: _size.width / 2,
                  childAspectRatio: 1 / 1,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, index) => contactGridItems[index],
                  childCount: contactGridItems.length,
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
