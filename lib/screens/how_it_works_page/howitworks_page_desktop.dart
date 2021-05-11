import 'package:flutter/material.dart';
import 'package:necter_web/components/footer/footer.dart';
import 'package:necter_web/components/navigation_bar/navigation_bar.dart';
import 'package:necter_web/constants/app_colors.dart';

class HowItWorksPageDesktop extends StatelessWidget {
  const HowItWorksPageDesktop(this.gridItems, this.smallFeatures);
  final List<Widget> gridItems;
  final List<Widget> smallFeatures;

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
                viewportFraction: 1,
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    // Color c = index % 2 == 0 ? Colors.white : Colors.grey;
                    return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            red,
                            blue,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    );
                  },
                  childCount: 1,
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: _size.width / 3,
                  childAspectRatio: 1 / 1,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext ctx, index) => smallFeatures[index],
                  childCount: smallFeatures.length,
                ),
              ),
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
