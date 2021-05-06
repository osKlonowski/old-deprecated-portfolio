import 'package:flutter/material.dart';
import 'package:necter_web/components/footer/footer.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';

class HowItWorksPageDesktop extends StatelessWidget {
  const HowItWorksPageDesktop(this.gridItems);
  final List<Widget> gridItems;

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
                  (BuildContext ctx, index) => gridItems[index],
                  childCount: gridItems.length,
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
