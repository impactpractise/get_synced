import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 45, left: 8, right: 8, bottom: 4),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0, 1.0),
            blurRadius: 4,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Try \"Yoga Berlin\"',
          alignLabelWithHint: true,
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.0,
          ),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
