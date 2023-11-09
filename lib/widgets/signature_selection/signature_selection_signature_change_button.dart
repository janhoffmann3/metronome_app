import 'package:flutter/material.dart';

import '../../resources/values/app_colors.dart';

/// ### Signature change button
///
/// A button for changing the signature
/// [type] for declaring which type of a button this is (increasing or decreasing).
/// [mainIcon] an icon that will be displayed in this button (+ or -) in this case.
///

class SignatureSelectionSignatureChangeButton extends StatelessWidget {
  /// Button type
  final Enum type;

  /// Button icon
  final Icon mainIcon;

  const SignatureSelectionSignatureChangeButton(
      {super.key, required this.mainIcon, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 43,
      decoration: BoxDecoration(
          color: AppColors.secondary900,
          border: Border.all(color: AppColors.secondary500),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
        child: mainIcon,
      ),
    );
  }
}
