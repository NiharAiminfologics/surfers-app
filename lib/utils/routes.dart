import 'package:flutter/material.dart';
import 'package:surfers/screens/homeScreen.dart';
import 'package:surfers/screens/profileScreen.dart';
import 'package:surfers/screens/splashScreen.dart';
import 'package:surfers/screens/storyScreen.dart';

class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => SplashScreen(), fullscreenDialog: true);

      case 'home':
        return MaterialPageRoute(
            builder: (_) => HomeScreen(), fullscreenDialog: true);

      case 'profile':
        return MaterialPageRoute(
            builder: (_) => ProfileScreen(), fullscreenDialog: true);

      // case 'story':
      //   return MaterialPageRoute(
      //       builder: (_) => StoryScreen(), fullscreenDialog: true);

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
      );
    });
  }
}



