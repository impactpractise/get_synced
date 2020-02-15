import 'package:flutter/material.dart';

class MainHeadline extends StatelessWidget {
  final String title;
  MainHeadline(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.0,
      ),
    );
  }
}
