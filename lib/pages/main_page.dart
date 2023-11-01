import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(flex: 1),
              Center(
                child: SizedBox(
                  width: 125,
                  height: 13,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 13,
                            height: 13,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColors.primary300)),
                        Container(
                            width: 13,
                            height: 13,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColors.secondary500)),
                        Container(
                            width: 13,
                            height: 13,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColors.secondary500)),
                        Container(
                            width: 13,
                            height: 13,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: AppColors.secondary500))
                      ]),
                ),
              ),
              const SizedBox(height: 80),
              //Spacer(flex: 1),
              Center(
                child: SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.add),
                        color: AppColors.secondary500,
                        iconSize: 40,
                        onPressed: () {},
                      ),
                      Column(children: [
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
                      IconButton(
                        icon: const Icon(Icons.remove),
                        color: AppColors.secondary500,
                        iconSize: 40,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(flex: 2),
              Center(
                child: SizedBox(
                  width: 330,
                  child: SliderTheme(
                      data: const SliderThemeData(
                          thumbColor: AppColors.primary400,
                          activeTrackColor: AppColors.primary400,
                          inactiveTrackColor: AppColors.secondary700),
                      child: Slider(value: 0.2, onChanged: (value) {})),
                ),
              ),
              //const SizedBox(height: 105),
              const Spacer(flex: 2),
              Center(
                child: GestureDetector(
                  child: Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        border: Border.all(color: AppColors.primary400)),
                    child: Center(
                        child: Text(
                      "Tap me",
                      style: AppFonts.bodyLarge,
                    )),
                  ),
                ),
              ),
              Center(
                child: Stack(children: [
                  Center(
                    child: Container(
                      width: 90,
                      height: 90,
                      margin: const EdgeInsets.only(top: 40),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: AppColors.primary400,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const Icon(
                          Icons.play_arrow,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 320,
                      height: 90,
                      margin: const EdgeInsets.only(top: 48),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      color: AppColors.secondary900,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                      border: Border.all(
                                          color: AppColors.secondary500)),
                                  child: const Icon(
                                    Icons.music_note,
                                    color: AppColors.secondary200,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Text(
                                    "Sound",
                                    style: TextStyle(
                                        color: AppColors.secondary200),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      color: AppColors.secondary900,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(50)),
                                      border: Border.all(
                                          color: AppColors.secondary500)),
                                  child: const Center(
                                    child: Text(
                                      "4/4",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: AppColors.secondary200),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Text(
                                    "Signature",
                                    style: TextStyle(
                                        color: AppColors.secondary200),
                                  ),
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              )
            ]),
      ),
    );
  }
}
