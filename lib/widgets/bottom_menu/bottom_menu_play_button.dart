import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../resources/values/app_colors.dart';

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
    return Container(
        width: 90,
        height: 90,
        margin: const EdgeInsets.only(top: 40),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.primary400,
          child: const Icon(
            Icons.play_arrow_rounded,
            size: 50,
            color: AppColors.secondary900,
          ),
        ));
  }
}
