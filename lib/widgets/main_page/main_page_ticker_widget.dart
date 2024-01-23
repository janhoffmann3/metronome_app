import 'package:flutter/material.dart';
import '../../resources/values/app_colors.dart';

/// ### The ticker widget
///
/// This widget graphically shows user the current beat.
/// When the beat changes, the specific container's background color changes with it.
///
///
class MainPageTickerWidget extends StatelessWidget {
  final int currentBeat;
  final int totalBeats;

  const MainPageTickerWidget(
    this.currentBeat,
    this.totalBeats, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: totalBeats < 8 ? 150 : 200,
        height: 13,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(totalBeats, (index) => accentDot(index))),
      ),
    );
  }

  Widget accentDot(int index) {
    Color dotColor;

    if (index == currentBeat) {
      if (currentBeat % totalBeats == 0) {
        dotColor = AppColors.primary400;
      } else {
        dotColor = AppColors.secondary200; // Current beat is white
      }
    } else {
      dotColor = AppColors.secondary500; // Other dots are grey
    }

    return Container(
        width: 13,
        height: 13,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: dotColor));
  }
}
