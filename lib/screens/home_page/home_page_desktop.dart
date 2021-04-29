import 'package:flutter/material.dart';
import 'package:necter_web/components/footer/footer.dart';
import 'package:necter_web/components/grid_components/welcome_01.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/constants/text_styles.dart';
import 'package:necter_web/utils/responsive.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop(this.gridItems);

  final List<Widget> gridItems;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: verticalRedNavBarGradient,
          ),
          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Coming in June 2021",
                    style: kNavBarTextStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      'FAQ',
                      style: kNavBarTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      'BLOG',
                      style: kNavBarTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      'DOWNLOAD',
                      style: kNavBarTextStyle,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
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
                  // return AspectRatio(
                  //   aspectRatio: 1 / 1,
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     child: Text('Cool'),
                  //     decoration: BoxDecoration(
                  //       color: Colors.amber[index * 100],
                  //     ),
                  //   ),
                  // );
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
