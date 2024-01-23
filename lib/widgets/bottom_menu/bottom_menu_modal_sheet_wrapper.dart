import 'package:flutter/material.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';

/// ### Bottom menu modal sheet wrapper
///
/// Manages the modal
///
class BottomMenuModalSheetWrapper extends StatelessWidget {
  /// How much space in % will the bottom modal take (0.45 and 0.75)
  final double height;

  /// Title text of the modal (Select signature and Select sound)
  final String titleText;

  ///Content of the modal
  final Widget? child;
  const BottomMenuModalSheetWrapper({
    super.key,
    required this.height,
    required this.titleText,
    this.child = const Placeholder(
      fallbackHeight: 100,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: AppColors.secondary700,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          border: Border.all(color: AppColors.secondary500)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 32,
              height: 4,
              decoration: const BoxDecoration(
                  color: AppColors.secondary500,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
          const SizedBox(height: 36),
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: Text(
              titleText,
              style: AppFonts.titleNormal,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Center(
            child: child,
          )
        ],
      ),
    );
  }
}
