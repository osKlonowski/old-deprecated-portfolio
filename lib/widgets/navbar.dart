import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';
import 'package:necter_web/utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  final bool isStyleWhite;
  final navLinks = ["Home", "Contact"];

  NavBar({Key key, this.isStyleWhite}) : super(key: key);

  List<Widget> navItem(BuildContext context) {
    return navLinks.map((text) {
      return GestureDetector(
        onTap: () {
          if (text == 'Home') {
            Navigator.pushNamed(context, '/');
          } else if (text == 'Contact') {
            Navigator.pushNamed(context, '/contact');
          }
        },
        child: Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Montserrat-Bold",
              color: isStyleWhite ? Colors.white54 : Colors.black54,
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFe50449),
                      Color(0xFF795dad),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child:
                      Image.asset('assets/logo_white.png', fit: BoxFit.contain),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Necter",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway',
                  color: isStyleWhite ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItem(context)]..add(InkWell(
                    child: Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 180,
                  height: 40,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFe50449),
                          Color(0xFF795dad),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF6078ea).withOpacity(.3),
                          offset: Offset(0, 8),
                          blurRadius: 8,
                        )
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "Coming Soon...",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          letterSpacing: 1,
                          fontFamily: "Montserrat-Bold",
                        ),
                      ),
                    ),
                  ),
                ))),
            )
          else
            Icon(Icons.menu, color: primaryColor)
        ],
      ),
    );
  }
}
