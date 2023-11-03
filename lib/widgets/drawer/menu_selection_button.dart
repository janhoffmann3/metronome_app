import 'package:flutter/material.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';

class MenuSelectionButton extends StatelessWidget {
  final String titleText;
  const MenuSelectionButton({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 266,
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
          color: AppColors.secondary900,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.secondary500)),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            titleText,
            style: AppFonts.bodyLarge,
          ),
          const Icon(
            Icons.chevron_right,
            color: AppColors.primary200,
          )
        ]),
      ),
    );
  }
}
