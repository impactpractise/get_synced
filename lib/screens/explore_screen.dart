import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    print(challenges[0].city);
    setState(() {
      _isLoading = false;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchBar(),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: <Widget>[
                    FilterButton(filterTitle: 'Categories'),
                    SizedBox(width: 15),
                    FilterButton(filterTitle: 'City'),
                  ],
                ),
              ),
              MainHeadline(
                  title: 'Here are curated groups for you',
                  textAlign: TextAlign.start),
              SizedBox(height: 10),
              SubTitle(
                subtitle: 'Meet people that share your interests',
                textAlign: TextAlign.start,
              ),
              Container(height: 200, child: PreviewCards()),
              MainHeadline(
                  title: 'Ready for your next challenge?',
                  textAlign: TextAlign.start),
              SizedBox(height: 10),
              SubTitle(
                subtitle: 'What is the next cool thing you want to experience?',
                textAlign: TextAlign.start,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                itemCount: challenges.length,
                itemBuilder: (BuildContext context, int index) {
                  return ChallengeCard(
                    title: challenges[index].name,
                    photo: challenges[index].photo,
                    difficulty: challenges[index].difficulty,
                    likes: challenges[index].likeCount,
                    participants: challenges[index].participantCount,
                    length: challenges[index].length,
                    city: challenges[index].city,
                  );
                },
              ),
              ActionButton('Start your challenge'),
            ],
          ),
        ),
      ),
    );
  }
}
