import 'package:flutter/material.dart';
import 'package:get_synced/components/filter_button.dart';
import 'package:get_synced/components/main_title.dart';
import 'package:get_synced/components/preview_cards.dart';
import 'package:get_synced/components/searchbar.dart';
import 'package:get_synced/components/sub_title.dart';
import 'package:get_synced/models/api_response.dart';
import 'package:get_synced/models/challenge_to_list.dart';
import 'package:get_synced/services/challenges_service.dart';

class ExploreScreen extends StatefulWidget {
  static String id = 'explore_screen';

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  ChallengeService get service => ChallengeService();

  APIResponse<List<ChallengeToShow>> _apiResponse;
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

    _apiResponse = await service.getChallengeList();
    setState(() {
      _isLoading = false;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 16, right: 16),
        children: <Widget>[
          SearchBar(),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
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
            padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
            child: Column(
              children: <Widget>[
                MainHeadline('How does your next challenge look like?'),
                SizedBox(
                  height: 10,
                ),
                PreviewCards(),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MainHeadline('Improve yourself'),
                  SizedBox(height: 10),
                  SubTitle('With curated challenges for impressive skills'),
                  SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xFF00D9C0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Add your own challenge",
                        style: TextStyle(
                          color: Color(0xFF00D9C0),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
