import 'package:flutter/material.dart';
import 'package:get_synced/components/action_button.dart';
import 'package:get_synced/components/challenge_card.dart';
import 'package:get_synced/components/filter_button.dart';
import 'package:get_synced/components/main_title.dart';
import 'package:get_synced/components/preview_cards.dart';
import 'package:get_synced/components/searchbar.dart';
import 'package:get_synced/components/sub_title.dart';
import 'package:get_synced/models/Challenges.dart';
import 'package:get_synced/services/challenges_service.dart';

class ExploreScreen extends StatefulWidget {
  static String id = 'explore_screen';

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  ChallengeService get service => ChallengeService();

  List<Challenge> challenges = [];
  bool _isLoading = false;

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  void initState() {
    _fetchChallenges();
    super.initState();
  }

  _fetchChallenges() async {
    setState(() {
      _isLoading = true;
    });
    challenges = await service.getChallengeList();
    print(challenges.length);
    setState(() {
      _isLoading = false;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 8, right: 8),
          itemCount: challenges.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                SearchBar(),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 16),
                  child: Row(
                    children: <Widget>[
                      FilterButton(filterTitle: 'Categories'),
                      SizedBox(width: 15),
                      FilterButton(filterTitle: 'City'),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MainHeadline(
                          title: 'Here are curated groups for you',
                          textAlign: TextAlign.start),
                      SizedBox(height: 10),
                      SubTitle(
                        subtitle: 'Meet people that share your interests',
                        textAlign: TextAlign.start,
                      ),
                      PreviewCards(),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MainHeadline(
                            title: 'Ready for your next challenge?',
                            textAlign: TextAlign.start),
                        SizedBox(height: 10),
                        SubTitle(
                          subtitle:
                              'What is the next cool thing you want to experience?',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 25),
                        ActionButton('Start your challenge'),
                        ChallengeCard(
                          title: challenges[index].name,
                          photo: challenges[index].photo,
                          difficulty: challenges[index].difficulty,
                          likes: challenges[index].likeCount,
                          participants: challenges[index].participantCount,
                          length: challenges[index].length,
                          city: challenges[index].city,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
