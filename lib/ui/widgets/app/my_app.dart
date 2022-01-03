import 'package:flutter/material.dart';
import 'package:olucha_kids/ui/themes/app_colors.dart';
import 'package:olucha_kids/ui/widgets/auth/auth_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Auchan ',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.white,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.white,
            selectedItemColor: AppColors.blue,
            unselectedItemColor: Colors.grey,
          ),
        ),
        home: const AuthWidget());
  }
}
