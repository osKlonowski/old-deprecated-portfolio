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
            Icons.arrow_back,
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
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'IMPRESSUM',
                    style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'Raleway',
                      fontSize: 35.0,
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'TUNED BKT UG (haftungsbestrankt)',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Raleway',
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Grootmoorgraben 4\n22175 Hamburg - Germany',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Raleway',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Geschäftsführer: Joshua Buse\nAmtsgericht Hamburg\nRegister-Nummer: HRB 155122',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Raleway',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
