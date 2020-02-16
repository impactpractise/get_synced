import 'dart:convert';

import 'package:get_synced/models/Challenges.dart';
import 'package:http/http.dart' as http;

class ChallengeService {
  static const API = 'https://getsynced.app/api/v1';
  //static const headers = {'token''tbd'};

  Future<List<Challenge>> getChallengeList() async {
    var data = await http.get(API + '/challenges');
    var challengeList = List<Challenge>();

    if (data.statusCode == 200) {
      final jsonData = json.decode(data.body);
      for (var item in jsonData["data"]) {
        challengeList.add(Challenge.fromJson(item));
      }
    }
    return challengeList;
  }
}
