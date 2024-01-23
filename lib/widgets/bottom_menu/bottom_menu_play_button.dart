import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronome_app/state/providers/user_provider.dart.dart';

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
    final metronomeNotifier = ref.watch(metronomeControllerProvider.notifier);
    final user = ref.watch(userProvider);
    IconData iconData = isActive ? Icons.stop : Icons.play_arrow;

    return Container(
        width: 90,
        height: 90,
        margin: const EdgeInsets.only(top: 40),
        child: FloatingActionButton(
            heroTag: null,
            onPressed: () {
              metronomeNotifier.toggle();
              metronomeNotifier.setHaptic(user!.settings!.hapticFeedback);
            },
            backgroundColor: AppColors.primary400,
            child: Icon(iconData, size: 50, color: AppColors.secondary900)));
  }
}
