import 'package:flutter/material.dart';
import 'package:get_synced/components/standard_button.dart';

class GmailAuth extends StatefulWidget {
  @override
  _GmailAuthState createState() => _GmailAuthState();
}

class _GmailAuthState extends State<GmailAuth> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        StandardButton(
            backgroundColor: Color(0xFF00D9C0),
            title: 'Sign in with Gmail',
            textColor: Colors.white,
            onPressed: null)
      ],
    );
  }
}
