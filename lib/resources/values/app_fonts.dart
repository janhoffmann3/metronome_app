import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metronome_app/resources/values/app_colors.dart';

class AppFonts {
  static TextStyle titleNormal = GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: AppColors.secondary200);

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
    fontStyle: FontStyle.italic,
    color: AppColors.secondary200,
  );

  static TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: AppColors.secondary200,
  );

  static TextStyle bodyMedium = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: AppColors.secondary200,
  );

  static TextStyle labelSmall = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: AppColors.secondary200,
  );

  static TextStyle sigIcon = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    letterSpacing: 5,
    color: AppColors.secondary200,
  );

  static TextStyle displaySmall = GoogleFonts.inter(
      fontSize: 40, fontWeight: FontWeight.bold, color: AppColors.primary400);

  static TextStyle signatureNumber = GoogleFonts.inter(
      fontSize: 55,
      fontWeight: FontWeight.normal,
      color: AppColors.secondary200);

  static TextStyle versionNumber = GoogleFonts.inter(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.secondary500);
}
