import 'package:flutter/material.dart';
import 'package:get_synced/screens/home_screen.dart';

import 'standard_button.dart';

class BottomImageWidget extends StatelessWidget {
  final String image;
  final String buttonTitle;
  final String color;
  final String text;

  BottomImageWidget({this.image, this.buttonTitle, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Image.asset(
              image,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          StandardButton(
            backgroundColor: Color(0xFFF3F3F3),
            title: buttonTitle,
            textColor: Color(0xFF1A2B3E),
            onPressed: () {
              Navigator.pushNamed(
                context,
                HomeScreen.id,
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
