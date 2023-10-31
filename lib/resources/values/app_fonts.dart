import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metronome_app/resources/values/app_colors.dart';

class AppFonts {
  static TextStyle titleSmall = GoogleFonts.inter(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    color: AppColors.secondary200,
  );

  static TextStyle displayLarge = GoogleFonts.inter(
    fontSize: 80,
    fontWeight: FontWeight.w900,
    letterSpacing: 0,
    color: AppColors.secondary200,
  );

  static TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: AppColors.secondary200,
  );
}
