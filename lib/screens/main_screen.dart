import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metronome_app/resources/values/app_colors.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.secondary900,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: AppColors.secondary500,
          size: 30,
        ),
        actions: const [
          Icon(Icons.star_border, color: AppColors.secondary500, size: 30)
        ],
        title: Text("Metronome",
            style: GoogleFonts.inter(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w900)),
      ),
    );
  }
}
