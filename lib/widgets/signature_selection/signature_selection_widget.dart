import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronome_app/pages/main_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/metronome.dart';
import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';
import 'signature_selection_signature_display_widget.dart';

part 'signature_selection_widget.g.dart';

/// ### Signature selection widget
///
/// User can control and set the signature of the metronome using this widget.
/// It contains four [SignatureSelectionSignatureChangeButton] (two for decreasing and two for increasing) for changing the signature.
/// It contains two [SignatureDisplayWidget] for showing the signature numeral on screen.
///

@riverpod
class TempoNotifier extends _$TempoNotifier {
  @override
  int build() => 100;
}

class SignatureSelectionWidget extends ConsumerWidget {
  const SignatureSelectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Metronome metronome = ref.watch(metronomeControllerProvider);

    final int firstNumeral = metronome.signature.firstNumeral;
    final int secondNumeral = metronome.signature.secondNumeral;

    return SizedBox(
      width: 248,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Column for the first numeral.
          Column(
            children: [
              // Button used for increasing the signature numeral.
              Container(
                width: 96,
                height: 43,
                decoration: BoxDecoration(
                    color: AppColors.secondary900,
                    border: Border.all(color: AppColors.secondary500),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: ElevatedButton(
                  onPressed: () {
                    ref
                        .read(metronomeControllerProvider.notifier)
                        .increaseFirstNumeral();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent),
                  child: const Icon(Icons.add),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // First numeral display widget.
              SignatureDisplayWidget(
                signatureText: firstNumeral,
              ),
              const SizedBox(
                height: 10,
              ),

              // Button used for decreasing the signature numeral.
              Container(
                width: 96,
                height: 43,
                decoration: BoxDecoration(
                    color: AppColors.secondary900,
                    border: Border.all(color: AppColors.secondary500),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: ElevatedButton(
                  onPressed: () {
                    ref
                        .read(metronomeControllerProvider.notifier)
                        .decreaseFirstNumeral();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent),
                  child: const Icon(Icons.remove),
                ),
              ),
            ],
          ),

          // "/" separator.
          Text(
            "/",
            style: AppFonts.signatureNumber,
          ),

          // Column for the second numeral.
          Column(
            children: [
              //Button used for increasing the signature numeral.
              Container(
                width: 96,
                height: 43,
                decoration: BoxDecoration(
                    color: AppColors.secondary900,
                    border: Border.all(color: AppColors.secondary500),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: ElevatedButton(
                  onPressed: () {
                    ref
                        .read(metronomeControllerProvider.notifier)
                        .increaseSecondNumeral();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent),
                  child: const Icon(Icons.add),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Second numeral display widget.
              SignatureDisplayWidget(signatureText: secondNumeral),
              const SizedBox(
                height: 10,
              ),

              // Button used for decreasing the signature numeral.
              Container(
                width: 96,
                height: 43,
                decoration: BoxDecoration(
                    color: AppColors.secondary900,
                    border: Border.all(color: AppColors.secondary500),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: ElevatedButton(
                  onPressed: () {
                    ref
                        .read(metronomeControllerProvider.notifier)
                        .decreaseSecondNumeral();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent),
                  child: const Icon(Icons.remove),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
