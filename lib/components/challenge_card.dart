import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  final int length;
  final String photo;
  final String city;
  final String title;
  final int participants;
  final int likes;
  final String difficulty;
  ChallengeCard({
    @required this.length,
    @required this.photo,
    @required this.city,
    @required this.title,
    @required this.participants,
    @required this.likes,
    @required this.difficulty,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5)),
          child: Image(
            height: 300,
            width: double.infinity,
            image: NetworkImage(photo),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          city,
          style: TextStyle(
            letterSpacing: 1,
            color: Color(0xFFFA6900),
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 8),
        Text(
          '$length  $title Challenge',
          style: TextStyle(
            letterSpacing: 1,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              size: 12,
            ),
            SizedBox(width: 8),
            Text(
              '$likes Admirations',
              style: TextStyle(
                letterSpacing: 0.5,
                fontSize: 12,
              ),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.people,
              size: 12,
            ),
            SizedBox(width: 8),
            Text(
              '$participants Participants',
              style: TextStyle(
                letterSpacing: 0.5,
                fontSize: 12,
              ),
            ),
            SizedBox(width: 8),
            Text(
              difficulty,
              style: TextStyle(
                letterSpacing: 0.5,
                fontSize: 12,
              ),
            ),
            SizedBox(width: 8),
            SizedBox(
              width: 60,
              child: LinearProgressIndicator(
                  backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                  value: 1,
                  valueColor: AlwaysStoppedAnimation(Color(0xFF00D9C0))),
            ),
          ],
        ),
      ],
    );
  }
}
