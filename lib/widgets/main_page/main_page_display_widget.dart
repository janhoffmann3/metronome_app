import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';

/// ### Display widget
///
/// It displays current tempo to user and contains information about latin tempo, bpm label and plus/minus buttons.
/// With plus/minus buttons user can adjust the tempo by 1/-1.
///

class MainPageDisplayWidget extends StatelessWidget {
  const MainPageDisplayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Plus button to increase the tempo by 1.
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/icon_plus.svg",
                height: 20,
                width: 20,
                colorFilter: const ColorFilter.mode(
                    AppColors.secondary500, BlendMode.srcIn),
              ),
              color: AppColors.secondary500,
              iconSize: 40,
              onPressed: () {},
            ),

            // This collumn contains main information - latin text, tempo and bpm label
            Column(children: [
              Text(
                "Allegro",
                style: AppFonts.titleSmall,
              ),
              Text(
                "140",
                style: AppFonts.displayLarge,
              ),
              Text(
                "BPM",
                style: AppFonts.bodyLarge,
              )
            ]),

            // Minus button to decrease the tempo by 1.
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/icon_minus.svg",
                height: 20,
                width: 20,
                colorFilter: const ColorFilter.mode(
                    AppColors.secondary500, BlendMode.srcIn),
              ),
              color: AppColors.secondary500,
              iconSize: 40,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
