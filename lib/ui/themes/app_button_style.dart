import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.red),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
    ),
  );

  static final ButtonStyle percent = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(AppColors.white),
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.yellow),
    shadowColor: MaterialStateProperty.all<Color>(AppColors.yellow),
    padding: MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(57.0),
      ),
    ),
  );

  static final ButtonStyle productDay = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(AppColors.white),
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.green),
    padding: MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(57.0),
      ),
    ),
  );
}
