import 'package:flutter/material.dart';

class MainHeadline extends StatelessWidget {
  final String title;
  final textAlign;
  MainHeadline({this.title, this.textAlign});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.0,
      ),
    );
  }
}
