import 'package:flutter/material.dart';

import '../../resources/values/app_colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90,
        height: 90,
        margin: const EdgeInsets.only(top: 40),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.primary400,
          child: const Icon(
            Icons.play_arrow_rounded,
            size: 50,
            color: AppColors.secondary900,
          ),
        ));
  }
}
