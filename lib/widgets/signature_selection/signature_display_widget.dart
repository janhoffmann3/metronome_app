import 'package:flutter/material.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';

class SignatureDisplayWidget extends StatelessWidget {
  final Enum numeral;
  final String signatureText;

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
        signatureText,
        style: AppFonts.signatureNumber,
      )),
    );
  }
}
