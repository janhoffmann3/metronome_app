import 'package:flutter/material.dart';

import '../../resources/values/app_colors.dart';

class SignatureChangeButton extends StatelessWidget {
  final Enum type;
  final Icon mainIcon;

  const SignatureChangeButton(
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
