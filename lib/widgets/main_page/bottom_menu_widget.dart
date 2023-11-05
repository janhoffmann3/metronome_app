import 'package:flutter/material.dart';

import '../bottom_menu/play_button.dart';
import '../bottom_menu/signature_selection_button.dart';
import '../bottom_menu/sound_selection_button.dart';

class BottomMenuWidget extends StatelessWidget {
  const BottomMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        // Play button
        const Center(
          child: PlayButton(),
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
                  SoundSelectionButton(),

                  // Signature selection button
                  SignatureSelectionButton(),
                ]),
          ),
        ),
      ]),
    );
  }
}
