import 'package:flutter/material.dart';

import '../bottom_menu/bottom_menu_play_button.dart';
import '../bottom_menu/bottom_menu_signature_selection_button.dart';
import '../bottom_menu/bottom_menu_sound_selection_button.dart';

/// ### Bottom menu widget
///
/// This widget contains (from the left) sound design button, play/pause button and signature button.
/// Buttons -  [BottomMenuPlayButton], [BottomMenuSoundSelectionButton], and [BottomMenuSignatureSelectionButton] are widgets.
///
///
class MainPageBottomMenuWidget extends StatelessWidget {
  const MainPageBottomMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        // Play button
        const Center(
          child: BottomMenuPlayButton(),
        ),

        // Secondary buttons
        Center(
          child: Container(
            width: 320,
            height: 90,
            margin: const EdgeInsets.only(top: 48),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Sound selection button
                  BottomMenuSoundSelectionButton(),

                  // Signature selection button
                  BottomMenuSignatureSelectionButton(),
                ]),
          ),
        ),
      ]),
    );
  }
}
