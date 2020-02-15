import 'dart:convert';

import 'package:get_synced/models/api_response.dart';
import 'package:get_synced/models/challenge_to_list.dart';
import 'package:http/http.dart' as http;

import '../models/challenge_to_list.dart';

class ChallengeService {
  static const API = 'https://getsynced.app/api/v1';
  //static const headers = {'token': 'tbd'};

  Future<APIResponse<List<ChallengeToShow>>> getChallengeList() {
    return http.get(API + '/challenges').then((data) {
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);
        final challenges = <ChallengeToShow>[];
        for (var item in jsonData["data"]) {
          final challenge = ChallengeToShow.fromMap(item);
          challenges.add(challenge);
        }
        return APIResponse<List<ChallengeToShow>>(data: challenges);
      }
      return APIResponse<List<ChallengeToShow>>(
          error: true, errorMessage: 'An error occured');
    }).catchError((_) => APIResponse<List<ChallengeToShow>>(
        error: true, errorMessage: 'An error occured'));
  }
}
