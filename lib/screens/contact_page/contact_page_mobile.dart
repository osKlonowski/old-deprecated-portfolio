import 'package:flutter/material.dart';
import 'package:necter_web/components/contact_widgets/contact_grid_01.dart';
import 'package:necter_web/components/contact_widgets/contact_grid_02.dart';
import 'package:necter_web/components/footer/footer.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';

final List<Widget> contactListItems = <Widget>[
  ContactGrid1(),
  ContactGrid2(),
];

class ContactPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size _size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return contactListItems[index];
                  },
                  childCount: contactListItems.length, // 1000 list items
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
