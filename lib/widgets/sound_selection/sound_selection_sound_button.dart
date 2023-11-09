import 'package:flutter/material.dart';
import 'package:metronome_app/resources/values/app_enums.dart';

import '../../resources/values/app_colors.dart';

// I have to make this differently
class SoundSelectionSoundButton extends StatelessWidget {
  final Enum buttonState;
  const SoundSelectionSoundButton({
    super.key,
    required this.buttonState,
  });

  @override
  Widget build(BuildContext context) {
    if (buttonState == SoundSelectionButtonState.selected) {
      return Container(
        width: 340,
        height: 56,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: AppColors.secondary900,
            border: Border.all(color: AppColors.secondary500),
            borderRadius: BorderRadius.circular(10)),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Piano",
              textAlign: TextAlign.left,
            ),
          ),
        ),
      );
    } else {
      return Container(
        width: 340,
        height: 56,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: AppColors.secondary900,
            border: Border.all(color: AppColors.secondary500),
            borderRadius: BorderRadius.circular(10)),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Piano",
              textAlign: TextAlign.left,
            ),
          ),
        ),
      );
    }
  }
}
