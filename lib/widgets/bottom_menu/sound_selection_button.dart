import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';

class SoundSelectionButton extends StatelessWidget {
  const SoundSelectionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              border: Border.all(color: AppColors.secondary500)),
          child: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: ((context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        decoration: const BoxDecoration(
                            color: AppColors.secondary700,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                      );
                    }));
              },
              elevation: 0,
              backgroundColor: AppColors.secondary900,
              child: SvgPicture.asset("assets/icons/icon_note.svg",
                  height: 27,
                  width: 23,
                  colorFilter: const ColorFilter.mode(
                      AppColors.secondary200, BlendMode.srcIn))),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Text(
            "Sound",
            style: AppFonts.labelSmall,
          ),
        )
      ],
    );
  }
}
