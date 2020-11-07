import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key key}) : super(key: key);
  static const String route = '/contact';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Contact View'),
    );
  }
}