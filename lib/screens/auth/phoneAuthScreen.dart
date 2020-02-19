//import 'dart:async';
//
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/material.dart';
//import 'package:get_synced/screens/home_screen.dart';
//
//class PhoneAuthScreen extends StatefulWidget {
//  @override
//  _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
//}
//
//class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
//  String phoneNumber;
//  String smsCode;
//  String verificationId;
//
//  Future<void> verifyPhone() async {
//    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
//      this.verificationId = verId;
//    };
//
//    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
//      this.verificationId = verId;
//    };
//
//    final PhoneVerificationCompleted verifiedSuccess =
//        (AuthCredential phoneAuthCredential) {
//      print('verified');
//    };
//
//    final PhoneVerificationFailed verificationFailed =
//        (AuthException exception) {
//      print('${exception.message}');
//    };
//
//    await FirebaseAuth.instance.verifyPhoneNumber(
//        phoneNumber: this.phoneNumber,
//        codeAutoRetrievalTimeout: autoRetrieve,
//        codeSent: smsCodeSent,
//        timeout: const Duration(seconds: 5),
//        verificationCompleted: verifiedSuccess,
//        verificationFailed: verificationFailed);
//  }
//
//  Future<bool> smsCodeDialog(BuildContext context) {
//    return showDialog(
//        context: context,
//        barrierDismissible: false,
//        builder: (BuildContext context) {
//          return AlertDialog(
//            title: Text('Enter verification code'),
//            content: TextField(
//              onChanged: (userInput) {},
//            ),
//            contentPadding: EdgeInsets.all(10.0),
//            actions: <Widget>[
//              FlatButton(
//                child:
//                    Text('Success', style: TextStyle(color: Colors.tealAccent)),
//                onPressed: () {
//                  FirebaseAuth.instance
//                      .currentUser()
//                      .then((phoneAuthCredential) {
//                    if (phoneAuthCredential != null) {
//                      Navigator.pushNamed(context, HomeScreen.id);
//                    } else {
//                      Navigator.of(context).pop();
//                    }
//                  });
//                },
//              )
//            ],
//          );
//        });
//  }
//
//  final AuthCredential credential = PhoneAuthProvider.getCredential(
//    verificationId: verificationId,
//    smsCode: smsCode,
//  );
//
//  FirebaseAuth _auth = FirebaseAuth.instance;
//  final FirebaseUser user =
//      await _auth.signInWithCredential(credential).then((user) {
//        Navigator.pushNamed(
//        builder: (context) => HomeScreen.id));
//  }).catchError((e) {
//  print(e);
//  });
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        TextField(
//            decoration:
//                InputDecoration(hintText: 'Please enter your phone number'),
//            onChanged: (userInput) {
//              this.phoneNumber = userInput;
//            }),
//        SizedBox(height: 10),
//        RaisedButton(
//          onPressed: verifyPhone,
//          child: Text('Verify'),
//          textColor: Colors.white,
//          elevation: 7.0,
//          color: Colors.lightBlue,
//        )
//      ],
//    );
//  }
//}
