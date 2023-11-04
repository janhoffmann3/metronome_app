import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronome_app/resources/values/app_colors.dart';
import 'package:metronome_app/resources/values/app_fonts.dart';
import 'package:metronome_app/resources/values/app_sizes.dart';

import '../widgets/drawer/menu_selection_button.dart';
import '../widgets/main_page/bottom_menu_widget.dart';
import '../widgets/main_page/display_widget.dart';
import '../widgets/main_page/tap_me_button.dart';
import '../widgets/main_page/tempo_slider.dart';
import '../widgets/main_page/ticker_widget.dart';

/// ### Main page of the app
///
///  It contains main componenents:
///
/// 1. [TickerWidget] for displaying current beat
/// 2. [DisplayWidget] for showing selected tempo
/// 3. [TempoSlider] for setting the tempo (you can also set the tempo using plus/minus buttons in the [DisplayWidget]),
/// 4. [TapMeButton] for manualy tapping the tempo
/// 5. [BottomMenuWidget] that works as a bottom navigation bar you can _start_ or _stop_ the metronome, or select different _sounds_ and _signatures_
///
class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,

      // This is the MainPage AppBar.
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          //The leading - side menu icon that opens the Drawer.
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: AppColors.secondary500,
              ),
              iconSize: AppSizes.iconSize,
            );
          }),

          //user can add tempo, signature and sound to their favorites list via this button.
          actions: [
            IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.star_border, color: AppColors.secondary500),
              iconSize: AppSizes.iconSize,
            )
          ]),

      // App drawer.
      drawer: Drawer(
        child: Container(
            color: AppColors.secondary700,
            child: ListView(
              children: [
                const SizedBox(
                  height: 80,
                ),
                DrawerHeader(
                    margin: const EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back",
                          style: AppFonts.titleSmall,
                        ),
                        Text(
                          "John!",
                          style: AppFonts.displaySmall,
                        )
                      ],
                    )),
                const SizedBox(height: 20),

                // A column containing the list of links to menus.
                const Column(
                  children: [
                    MenuSelectionButton(titleText: "Favorites"),
                    MenuSelectionButton(titleText: "Settings"),
                    MenuSelectionButton(titleText: "About")
                  ],
                )
              ],
            )),
      ),

      // This is the body of the main screen.
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
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover)),

        // Child collum containing TickerWidget, DisplayWidget, TempoSlider, TapMeButton and BottomMenuWidget.
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(flex: 2),

              // A widget that displays the current beat.
              TickerWidget(),
              SizedBox(height: 80),

              // A widget that shows the selected tempo and contains plus/minus controls.
              DisplayWidget(),
              Spacer(flex: 2),

              // A widget for setting the tempo.
              TempoSlider(),
              Spacer(flex: 2),

              // A button for manually tapping the tempo.
              TapMeButton(),

              // A widget with sound selection, signature selection and play/stop button.
              BottomMenuWidget(),
              SizedBox(
                height: 20,
              )
            ]),
      ),
    );
  }
}
