import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metronome_app/resources/values/app_colors.dart';
import 'package:metronome_app/resources/values/app_fonts.dart';
import 'package:metronome_app/resources/values/app_sizes.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(
          gradient: RadialGradient(
        center: Alignment.bottomLeft,
        colors: [Color(0xFF291E4D), Color(0xFF10151D)],
        stops: [0, 1],
        radius: 1,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            backgroundColor: AppColors.secondary900,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: AppColors.secondary500,
              ),
              iconSize: AppSizes.iconSize,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.star_border,
                    color: AppColors.secondary500),
                iconSize: AppSizes.iconSize,
              )
            ]),
        body: Column(children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 80),
              width: 125,
              height: 13,
              color: Colors.transparent,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 13,
                        height: 13,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.primary300)),
                    Container(
                        width: 13,
                        height: 13,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.secondary500)),
                    Container(
                        width: 13,
                        height: 13,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.secondary500)),
                    Container(
                        width: 13,
                        height: 13,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.secondary500))
                  ]),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 80),
              width: 260,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.add,
                    color: AppColors.secondary200,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Allegro",
                          style: AppFonts.titleSmall,
                        ),
                        Text(
                          "140",
                          style: AppFonts.displayLarge,
                        ),
                        Text(
                          "BPM",
                          style: AppFonts.bodyLarge,
                        )
                      ]),
                  const Icon(
                    Icons.remove,
                    color: AppColors.secondary200,
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
