import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';

class DisplayWidget extends StatelessWidget {
  const DisplayWidget({
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
