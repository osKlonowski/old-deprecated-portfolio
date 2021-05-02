import 'package:flutter/material.dart';
import 'package:necter_web/components/footer/footer.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile(this.gridItems);

  final List<Widget> gridItems;

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
                    return gridItems[index];
                  },
                  childCount: gridItems.length, // 1000 list items
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
