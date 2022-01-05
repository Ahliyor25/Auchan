import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olucha_kids/ui/themes/app_colors.dart';

abstract class FontStyles {
  static TextStyle cardTitle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.dark,
  );

  static TextStyle value = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle title = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.dark,
  );

  static TextStyle infoCard = GoogleFonts.montserrat(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.dark);

  static TextStyle giftValue = GoogleFonts.montserrat(
      fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.red);

  // korzina

  static TextStyle desCartCount = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );
  static TextStyle priceSingle = GoogleFonts.montserrat(
      fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.grey);
  static TextStyle TitleProduct = GoogleFonts.montserrat(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.dark);
}
