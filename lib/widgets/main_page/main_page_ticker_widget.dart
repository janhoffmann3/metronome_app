import 'package:flutter/material.dart';
import '../../resources/values/app_colors.dart';

/// ### The ticker widget
///
/// This widget graphically shows user the current beat.
/// When the beat changes, the specific container's background color changes with it.
///

class MainPageTickerWidget extends StatelessWidget {
  const MainPageTickerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 125,
        height: 13,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // First container.
          Container(
              width: 13,
              height: 13,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.primary300)),
          // Second container.
          Container(
              width: 13,
              height: 13,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.secondary500)),
          // Third container.
          Container(
              width: 13,
              height: 13,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.secondary500)),
          // Fourth container
          Container(
              width: 13,
              height: 13,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.secondary500))
        ]),
      ),
    );
  }
}
