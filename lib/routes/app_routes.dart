import 'package:flutter/material.dart';
import '../screens/home_view.dart';

class AppRoutes {
  static const home = '/';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute(builder: (_) => const HomeView());
    }
  }
}
