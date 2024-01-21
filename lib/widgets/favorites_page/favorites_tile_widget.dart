import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';

class FavoritesTileWidget extends StatelessWidget {
  final String name;
  final String bpm;
  final String signature;
  final String sound;

  const FavoritesTileWidget({
    super.key,
    required this.name,
    required this.bpm,
    required this.signature,
    required this.sound,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          color: AppColors.secondary700,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: ListTile(
        iconColor: AppColors.secondary200,
        textColor: AppColors.secondary200,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            "Favorite #1",
            style: AppFonts.labelLarge,
          ),
        ),
        tileColor: AppColors.secondary700,
        subtitle: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                "$bpm BPM",
                style:
                    AppFonts.bodyMedium.copyWith(color: AppColors.secondary200),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                signature,
                style:
                    AppFonts.bodyMedium.copyWith(color: AppColors.secondary200),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                sound,
                style:
                    AppFonts.bodyMedium.copyWith(color: AppColors.secondary200),
              ),
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(FontAwesomeIcons.solidStar),
          onPressed: () {},
        ),
      ),
    );
  }
}
