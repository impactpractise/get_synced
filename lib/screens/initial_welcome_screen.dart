import 'package:flutter/material.dart';
import 'package:get_synced/components/standard_button.dart';
import 'package:get_synced/screens/explore_screen.dart';

class InitialWelcomeScreen extends StatefulWidget {
  static const String id = 'initial_welcome_screen';

  @override
  _InitialWelcomeScreenState createState() => _InitialWelcomeScreenState();
}

class _InitialWelcomeScreenState extends State<InitialWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Welcome to',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF1A2B3E),
                ),
              ),
            ),
          ),
          Text(
            'Synced',
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 10,
              fontSize: 45.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF1A2B3E),
            ),
          ),
          Text(
            '________________________________',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w100,
              color: Color(0xFF1A3B3E),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'Join circles and grow with friends by completing 7, 14 and 30 day challenges.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
              color: Color(0xFF1A3B3E),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/background.png',
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
              StandardButton(
                color: Color(0xFFF3F3F3),
                title: 'Get started',
                textColor: Color(0xFF1A2B3E),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ExploreScreen.id,
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  'By signing up you are agreeing to our privacy policy and terms of service.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
