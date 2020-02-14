import 'package:flutter/material.dart';
import 'package:get_synced/models/challenge_to_list.dart';

class ChallengeCardWidget extends StatelessWidget {
  final List<ChallengeToShow> challenges = [
    ChallengeToShow(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(8),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 275,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            child: Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1581640582734-f8858321d5f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=612&q=80'),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => Divider(),
    );
  }
}
