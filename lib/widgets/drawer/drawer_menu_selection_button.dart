import 'package:flutter/material.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';

/// ### MenuSelectionButton
///
/// This button is used in the main menu for user navigation
///
///  It requires [titleText] which is a title of the button.
///
class DrawerMenuSelectionButton extends StatelessWidget {
  /// Button title
  final String titleText;
  final Function() onPressed;

  const DrawerMenuSelectionButton({
    super.key,
    required this.titleText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 266,
      margin: const EdgeInsets.only(top: 15),

      // It has a decoration of a rectangle with rounded corners. The radius is 10px.
      decoration: BoxDecoration(
          color: AppColors.secondary900,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.secondary500)),

      // The ElevatedButton is a child of the Container. It makes the button clickable.
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        // Title of the button.
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            titleText,
            style: AppFonts.bodyLarge,
          ),
          // Icon - always chevron_right since it is a navigation button.
          const Icon(
            Icons.chevron_right,
            color: AppColors.primary200,
          )
        ]),
      ),
    );
  }
}
