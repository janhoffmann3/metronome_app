import 'package:flutter/material.dart';
import 'package:metronome_app/resources/values/app_colors.dart';
import 'package:metronome_app/resources/values/app_fonts.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          //The leading - side menu icon that opens the Drawer.
          leading: BackButton(
            onPressed: () {},
            color: AppColors.secondary200,
          ),
          title: Text(
            "Home",
            style: AppFonts.titleSmall,
          )),

      // User can add tempo, signature and sound to their favorites list via this button.

      body: Container(
        // This is the background image that fills the main screen and extends behind the app bar.
        decoration: const BoxDecoration(
            /* gradient: RadialGradient(
        center: Alignment.bottomLeft,
        colors: [Color(0xFE291E4D), Color(0xFE10151D)],
        stops: [0, 1],
        radius: 1,
      ) */
            image: DecorationImage(
                image: AssetImage("assets/images/main_page_background.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
