import 'package:flutter/material.dart';
import 'package:drawer/main.dart';
import 'package:drawer/home.dart';
import 'package:drawer/profile.dart';
import 'package:drawer/setting.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const MyApp());
      case '/profile':
        return MaterialPageRoute(builder: (context) => const Profile());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(title: const Text("Error")),
          body: const Center(child: Text('Error page')),
        );
      },
    );
  }
}
