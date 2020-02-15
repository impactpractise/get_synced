import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String actionTitle;
  ActionButton(this.actionTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xFF00D9C0),
        ),
      ),
      child: Center(
        child: Text(
          actionTitle,
          style: TextStyle(
            color: Color(0xFF00D9C0),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
