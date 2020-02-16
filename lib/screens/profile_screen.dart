import 'dart:math';

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static String id = 'profile_screen_id';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static Random random = Random();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 100),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://scontent-ber1-1.cdninstagram.com/v/t51.2885-15/e35/17819292_235275786949175_1232856025715965952_n.jpg?_nc_ht=scontent-ber1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=mpibDIWRIvgAX8uImVn&oh=f99e4cb3b9ba4ddcd549ed179ff63613&oe=5ECCE2AD',
              ),
              radius: 50,
            ),
            SizedBox(height: 10),
            Text(
              'Luisa',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Simply awesome, right?",
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'Challenge',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xFFFA6900),
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                FlatButton(
                  child: Text(
                    'Follow',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xFF00D9C0),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '1023',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Tiny wins",
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '2938',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Admirations",
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '15',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Achievements",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              primary: false,
              padding: EdgeInsets.all(5),
              itemCount: 15,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 200 / 200,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Image.asset(
                    "assets/images/cm${random.nextInt(10)}.jpeg",
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
