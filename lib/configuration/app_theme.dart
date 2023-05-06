import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trading_app/configuration/app_colors.dart';

class AppThemes {
  static ThemeData myTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: AppColors.kWhiteColor,
        ),
        backgroundColor: AppColors.kBlackColor,
      ),
      scaffoldBackgroundColor: AppColors.kBlackColor,
      colorSchemeSeed: AppColors.kPrimaryColor,
      useMaterial3: true,
      textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme.apply().copyWith(
              /// auth titlt 22 font size
              titleLarge: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.white),

              /// two wights w400,w500 font 14
              titleSmall: const TextStyle(color: Colors.white),

              /// font size 12
              labelMedium: const TextStyle(color: AppColors.kWhiteColor),
            ),
      ),
    );
  }
}
