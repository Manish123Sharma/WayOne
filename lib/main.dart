import 'package:flutter/material.dart';
import 'package:wayone/routes/app_routes.dart';
import 'package:wayone/theme/app_theme.dart';

void main(){
  runApp(WayOne());
}

class WayOne extends StatelessWidget{
  const WayOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WayOne',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
  
}