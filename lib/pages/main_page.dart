import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:metronome_app/models/favorite.dart';
import 'package:metronome_app/resources/values/app_colors.dart';
import 'package:metronome_app/resources/values/app_fonts.dart';
import 'package:metronome_app/resources/values/app_sizes.dart';
import 'package:metronome_app/resources/helpers/app_tempo_transcription.dart';
import 'package:metronome_app/state/metronome_controller.dart';
import 'package:metronome_app/state/providers/user_provider.dart.dart';

import '../widgets/drawer/drawer_menu_selection_button.dart';
import '../widgets/main_page/main_page_bottom_menu_widget.dart';
import '../widgets/main_page/main_page_display_widget.dart';
import '../widgets/main_page/main_page_tap_me_button.dart';
import '../widgets/main_page/main_page_tempo_slider.dart';
import '../widgets/main_page/main_page_ticker_widget.dart';

/// ### Main page of the app
///
///  It contains main componenents:
///
/// 1. [MainPageTickerWidget] for displaying current beat
/// 2. [MainPageDisplayWidget] for showing selected tempo
/// 3. [MainPageTempoSlider] for setting the tempo (you can also set the tempo using plus/minus buttons in the [MainPageDisplayWidget]),
/// 4. [MainPageTapMeButton] for manualy tapping the tempo
/// 5. [MainPageBottomMenuWidget] that works as a bottom navigation bar you can _start_ or _stop_ the metronome, or select different _sounds_ and _signatures_
///
///

class MainPage extends ConsumerWidget {
  const MainPage({super.key});
  static String get routeName => 'main';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // RiverPod
    final metronome = ref.watch(metronomeControllerProvider);
    final metronomeNotifier = ref.watch(metronomeControllerProvider.notifier);
    final user = ref.watch(userProvider);
    final userNotifier = ref.watch(userProvider.notifier);

    // Adds new favorite for current user
    Future<void> addFavorite() async {
      // Sets the date suffix
      DateTime now = DateTime.now();
      DateTime date = DateTime(now.year, now.month, now.day);
      String formattedDate = date.toString().substring(0, 10);

      // Favorites the current set-up
      metronomeNotifier.favorite();

      // Adds new favorite to database
      await userNotifier.addFavorite(Favorite(
          id: null,
          name:
              "${TempoTranscription().getTranscription(metronome.tempo)} $formattedDate",
          signature:
              "${metronome.signature.firstNumeral}/${metronome.signature.secondNumeral}",
          sound: metronome.sound,
          tempo: metronome.tempo));
    }

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

          // User can add tempo, signature and sound to their favorites list via this button.
          actions: [
            IconButton(
              onPressed: () async {
                await addFavorite();
              },
              icon: Icon(
                  metronome.favorited == true
                      ? FontAwesomeIcons.solidStar
                      : FontAwesomeIcons.star,
                  color: AppColors.secondary500),
              iconSize: AppSizes.iconSize,
            )
          ]),

      // App drawer.
      drawer: Drawer(
        child: Container(
            decoration: const BoxDecoration(
                color: AppColors.secondary700,
                border:
                    Border(right: BorderSide(color: AppColors.secondary500))),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Column(
                  children: [
                    SizedBox(
                        height: 80,
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome back",
                              style: AppFonts.titleSmall,
                            ),
                            Text(
                              user?.name ?? "Not logged in",
                              style:
                                  AppFonts.displaySmall.copyWith(fontSize: 20),
                            ),
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                // A column containing the list of links to menus.
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DrawerMenuSelectionButton(
                      titleText: "Favorites",
                      onPressed: () {
                        context.go("/favorites");
                      },
                    ),
                    DrawerMenuSelectionButton(
                      titleText: "Settings",
                      onPressed: () {
                        context.go("/settings");
                      },
                    ),
                    DrawerMenuSelectionButton(
                      titleText: "About",
                      onPressed: () {
                        context.go("/about");
                      },
                    )
                  ],
                ),
                const Spacer(flex: 6),
                Text(
                  "App version 1.0.0",
                  style: AppFonts.versionNumber,
                ),
                const SizedBox(
                  height: 40,
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
                image: AssetImage("assets/images/main_page_background.jpg"),
                fit: BoxFit.cover)),

        // Child collum containing TickerWidget, DisplayWidget, TempoSlider, TapMeButton and BottomMenuWidget.
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(flex: 2),

              // A widget that displays the current beat.
              MainPageTickerWidget(
                  metronome.beatCounter % metronome.signature.firstNumeral,
                  metronome.signature.firstNumeral),

              const SizedBox(height: 80),
              // A widget that shows the selected tempo and contains plus/minus controls.
              const MainPageDisplayWidget(),
              const Spacer(flex: 2),

              // A widget for setting the tempo.
              const MainPageTempoSlider(),
              const Spacer(flex: 1),

              // A button for manually tapping the tempo.
              const MainPageTapMeButton(),

              // A widget with sound selection, signature selection and play/stop button.
              const MainPageBottomMenuWidget(),
              const SizedBox(
                height: 20,
              )
            ]),
      ),
    );
  }
}
