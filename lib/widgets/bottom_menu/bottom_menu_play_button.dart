import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../resources/values/app_colors.dart';
import '../../state/metronome_controller.dart';

/// ### Play button widget from the bottom menu
///
/// Used for playing/pausing the metronome
///
class BottomMenuPlayButton extends ConsumerWidget {
  const BottomMenuPlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isActive = ref.watch(metronomeControllerProvider).isActive;
    IconData iconData = isActive ? Icons.stop : Icons.play_arrow;

    return Container(
        width: 90,
        height: 90,
        margin: const EdgeInsets.only(top: 40),
        child: FloatingActionButton(
            onPressed: () {
              ref.watch(metronomeControllerProvider.notifier).toggle();
            },
            backgroundColor: AppColors.primary400,
            child: Icon(iconData, size: 50, color: AppColors.secondary900)));
  }
}
