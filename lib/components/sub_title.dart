import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String subtitle;
  SubTitle(this.subtitle);
  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 1.0),
    );
  }
}
