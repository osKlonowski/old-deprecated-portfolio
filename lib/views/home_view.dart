import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/utils/responsiveLayout.dart';
import 'package:necter_web/widgets/navbar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF8FBFF),
            Color(0xFFFCFDFD),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(isStyleWhite: false),
              Body(),
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          TextButton(
            child: Text('Imprint'),
            onPressed: () => Navigator.pushNamed(context, '/imprint'),
          ),
          TextButton(
            child: Text('Privacy Policy'),
            onPressed: () => Navigator.pushNamed(context, '/privacy-policy'),
          ),
          TextButton(
            child: Text('Terms and Conditions'),
            onPressed: () =>
                Navigator.pushNamed(context, '/terms-and-conditions'),
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.asset('assets/mock-up.png', fit: BoxFit.fitHeight),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Necter",
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Montserrat-Regular",
                      color: primaryColor,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Coming in ",
                      style: TextStyle(
                        fontSize: 60,
                        color: Color(0xFF8591B0),
                      ),
                      children: [
                        TextSpan(
                          text: "Spring 2021",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            //foreground: Paint()..shader = linearGradient,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 20),
                    child: Text(
                      "Blurring the line between online and offline dating.",
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Color(0xFF8591B0),
                          fontSize: 16.0),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  //Search()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Necter",
              style: TextStyle(
                fontSize: 60,
                color: primaryColor,
                fontWeight: FontWeight.w800,
                fontFamily: "Montserrat-Regular",
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Coming in ',
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Spring 2021',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20.0),
              child: Text(
                "Blurring the line between online and offline dating.",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Color(0xFF8591B0),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(
                'assets/mock-up.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Center(
            //   child: Image.network(
            //     "assets/image_01.png",
            //     scale: 1,
            //   ),
            // ),
            // SizedBox(
            //   height: 32,
            // ),
            //Search(),
            // SizedBox(
            //   height: 30,
            // )
          ],
        ),
      ),
    );
  }
}
