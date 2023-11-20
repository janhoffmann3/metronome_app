import 'package:flutter/material.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';

/// ### Signature display widget
///
/// Shows the user which numeral is being set and what is its value.
/// [numeral] for what numeral this widget is - there are two numerals in signature - first and second.
/// [signatureText] for displaying the actual value of the numeral.
///

class SignatureDisplayWidget extends StatelessWidget {
  /// What numeral this widget displays - first or second.
  final Enum numeral;

  /// An actual value of the numeral.
  final int? signatureText;

  const SignatureDisplayWidget({
    super.key,
    required this.numeral,
    required this.signatureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 104,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: AppColors.primary400),
      child: Center(
          child: Text(
        signatureText.toString(),
        style: AppFonts.signatureNumber,
      )),
    );
  }
}
