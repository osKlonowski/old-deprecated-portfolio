import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:necter_web/utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Home", "Contact"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return GestureDetector(
        onTap: () {
          EasyLoading.showToast('Coming Soon...',
              toastPosition: EasyLoadingToastPosition.bottom);
        },
        child: Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(
            text,
            style: TextStyle(
                fontFamily: "Montserrat-Bold", color: Colors.grey[400]),
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
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(colors: [
                    Color(0xFFe50449),
                    Color(0xFF795dad),
                  ], begin: Alignment.bottomRight, end: Alignment.topLeft),
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
                    fontFamily: 'Raleway'),
              ),
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItem()]..add(InkWell(
                    child: Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 180,
                  height: 40,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFe50449),
                        Color(0xFF795dad),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF6078ea).withOpacity(.3),
                            offset: Offset(0, 8),
                            blurRadius: 8)
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
            Image.network("assets/menu.png", width: 26, height: 26)
        ],
      ),
    );
  }
}
