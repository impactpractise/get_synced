import 'dart:convert';

import 'package:get_synced/models/api_response.dart';
import 'package:get_synced/models/challenge_to_list.dart';
import 'package:http/http.dart' as http;

import '../models/challenge_to_list.dart';

class ChallengeService {
  static const API = 'getsynced.app/api/v1';
  //static const headers = {'token': 'tbd'};

  Future<APIResponse<List<ChallengeToShow>>> getChallengeList() {
    return http.get(API + '/challenges').then((data) {
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);
        final challenges = <ChallengeToShow>[];
        for (var item in jsonData) {
          final challenge = ChallengeToShow(
            name: item['name'] as String,
            length: item['length'] as int,
            difficulty: item['difficulty'] as double,
            description: item['description'] as String,
            benefits: item['benefits'] as String,
            tags: item['tags'] as List,
            hasLiked: item['hasLiked'] as List,
            participants: item['participants'] as List,
            isPublic: item['isPublic'] as bool,
            likeCount: item['likeCount'] as int,
            participantCount: item['participantCount'] as int,
            photo: item['photo'] as String,
            createdAt: DateTime.parse(item['createdAt']),
            updatedAt: item['updatedAt'] != null
                ? DateTime.parse(item['updatedAt'])
                : null,
          );
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
