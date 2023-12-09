import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronome_app/models/metronome.dart';
import 'package:metronome_app/pages/main_page.dart';

import 'sound_selection_sound_button.dart';

class SoundSelectionWidget extends ConsumerWidget {
  const SoundSelectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Metronome metronome = ref.watch(metronomeControllerProvider);
    String sound = metronome.sound;

    return Center(
        child: Column(
      children: [
        SoundSelectionSoundButton(
          name: "Piano",
          selected: sound == "Piano" ? true : false,
          onPressed: () {
            ref.read(metronomeControllerProvider.notifier).selectSound("Piano");
          },
        ),
        SoundSelectionSoundButton(
          name: "Synth",
          selected: sound == "Synth" ? true : false,
          onPressed: () {
            ref.read(metronomeControllerProvider.notifier).selectSound("Synth");
          },
        )
      ],
    ));
  }
}
