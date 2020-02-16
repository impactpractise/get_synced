import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_synced/screens/explore_screen.dart';
import 'package:get_synced/screens/home_screen.dart';
import 'package:get_synced/screens/initial_welcome_screen.dart';
import 'package:get_synced/screens/profile_screen.dart';
import 'package:get_synced/services/challenges_service.dart';

GetIt services = GetIt.instance;

void setupServices() {
  services.registerLazySingleton(() => ChallengeService());
}

void main() {
  setupServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: InitialWelcomeScreen.id,
      routes: {
        InitialWelcomeScreen.id: (context) => InitialWelcomeScreen(),
        //PhoneLoginScreen.id: (context) => PhoneLoginScreen(),
        //WelcomeScreen.id: (context) => WelcomeScreen(),
        ExploreScreen.id: (context) => ExploreScreen(),
        //CreateChallengeScreen.id: (context) => CreateChallengeScreen(),
        //ExploreChallengeScreen.id: (context) => ExploreChallengeScreen()
        HomeScreen.id: (context) => HomeScreen(),
        ProfileScreen.id: (context) => ProfileScreen()
      },
    );
  }
}
