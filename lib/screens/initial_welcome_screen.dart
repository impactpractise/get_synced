import 'package:flutter/material.dart';
import 'package:get_synced/components/buttom_image_widget.dart';
import 'package:get_synced/components/sub_title.dart';

class InitialWelcomeScreen extends StatefulWidget {
  static const String id = 'initial_welcome_screen';

  @override
  _InitialWelcomeScreenState createState() => _InitialWelcomeScreenState();
}

class _InitialWelcomeScreenState extends State<InitialWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 250, left: 25, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome to',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
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
                  SizedBox(height: 20),
                  SubTitle(
                    subtitle:
                        'Complete 7, 14 or 30 day challenges with friends and build your own portfolio.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomImageWidget(
              image: 'assets/images/background.png',
              buttonTitle: 'Get started',
              text:
                  'By signing up you are agreeing to our privacy policy and terms of service.'),
        ],
      ),
    );
  }
}
