import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronome_app/resources/values/app_colors.dart';
import 'package:metronome_app/resources/values/app_fonts.dart';
import 'package:metronome_app/resources/values/app_sizes.dart';

import '../widgets/drawer/menu_selection_button.dart';
import '../widgets/main_page/bottom_menu_widget.dart';
import '../widgets/main_page/display_widget.dart';
import '../widgets/main_page/tap_me_widget.dart';
import '../widgets/main_page/tempo_slider_widget.dart';
import '../widgets/main_page/ticker_widget.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
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
          actions: [
            IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.star_border, color: AppColors.secondary500),
              iconSize: AppSizes.iconSize,
            )
          ]),
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
      body: Container(
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
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(flex: 2),

              // Ticker
              TickerWidget(),
              SizedBox(height: 80),

              // Display
              DisplayWidget(),
              Spacer(flex: 2),

              // Slider
              TempoSlider(),
              Spacer(flex: 2),

              // Tap me button
              TapMeWidget(),

              // Bottom menu
              BottomMenuWidget(),
              SizedBox(
                height: 20,
              )
            ]),
      ),
    );
  }
}
