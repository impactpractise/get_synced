import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String subtitle;
  final textAlign;
  SubTitle({this.subtitle, this.textAlign});
  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 1.0),
    );
  }
}
