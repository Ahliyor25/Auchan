import 'package:auchan/ui/theme/app_colors.dart';
import 'package:auchan/ui/widgets/intro/intro_widget.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auchan ',
        theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.green,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.red,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home:  const IntroWidget()
    );
  }
}