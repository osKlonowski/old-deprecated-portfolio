import 'package:flutter/material.dart';
import 'package:necter_web/constants/app_colors.dart';

class Imprint extends StatelessWidget {
  const Imprint({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22.0),
            child: FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: Text(
                'Necter',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 25.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Text("TUNED BKT UG (haftungbestrankt)"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
