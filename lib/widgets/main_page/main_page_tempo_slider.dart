import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronome_app/pages/main_page.dart';

import '../../models/metronome.dart';
import '../../resources/values/app_colors.dart';

/// ### Tempo slider
///
/// Just a basic slider for setting the tempo.
///

class MainPageTempoSlider extends ConsumerWidget {
  const MainPageTempoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Metronome metronome = ref.watch(metronomeControllerProvider);
    int tempo = metronome.tempo;

    return Center(
      child: SizedBox(
        width: 330,
        child: SliderTheme(
            data: const SliderThemeData(
                thumbColor: AppColors.primary400,
                activeTrackColor: AppColors.primary400,
                inactiveTrackColor: AppColors.secondary700),
            child: Slider(
                min: 30,
                max: 250,
                value: tempo.toDouble(),
                onChanged: (value) {
                  int newValue = value.round();

                  ref
                      .read(metronomeControllerProvider.notifier)
                      .changeTempo(newValue);
                })),
      ),
    );
  }
}
