import 'package:flutter/material.dart';

class FAQItem {
  FAQItem({
    @required this.answer,
    @required this.question,
    this.isExpanded = false,
  });

  String answer;
  String question;
  bool isExpanded;
}
